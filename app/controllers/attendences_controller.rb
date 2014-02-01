class AttendencesController < ApplicationController
  # GET /attendences
  # GET /attendences.json
  def index
    @attendences = Attendence.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attendences }
    end
  end

  # GET /attendences/1
  # GET /attendences/1.json
  def show
    @attendence = Attendence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attendence }
    end
  end

  # GET /attendences/new
  # GET /attendences/new.json
  def new
    @attendence = Attendence.new
    find_cat
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attendence }
    end
  end

  def attendence_child
    @attendence_child = AttendenceChild.new
    find_cat
  end

  def graph_att
    find_cat
    @tot_per={}
  end
  def find_cat
    @year = which_category.years
  end
  def move_to_next_year
    @move_class = MoveClass.new
    @college_master = CollegeMaster.last
    @year = Category.find(@college_master.category).years !@college_master.blank?
  end
  # GET /attendences/1/edit
  def edit
    @attendence = Attendence.find(params[:id])
  end
  # POST /attendences
  # POST /attendences.json
  def create
    @attendence = Attendence.new(params[:attendence])
    myString=[]
    for i in 0...params[:student_id].length
      myString.push({:student_id=>params[:student_id][i],:presence=>(params[:presence].join("_").split("_")).include?(params[:student_id][i]) ? "yes" : "no"})
    end
    respond_to do |format|
      if @attendence.save
        @attendence.attendence_children.create(myString)
        format.html { redirect_to @attendence, notice: 'Attendence was successfully created.' }
        format.json { render json: @attendence, status: :created, location: @attendence }
      else
        format.html { render action: "new" }
        format.json { render json: @attendence.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_attendence
    # @attendence_child = AttendenceChild.new(params[:attendence_child])
    myString=[]
    for i in 0...params[:student_id].length
      myString.push({:all_registration_id=>params[:student_id][i],:presence=>((params[:presence].join("_").split("_")).include?(params[:student_id][i]) ? "yes" : "no"), :year=>params[:attendence_child][:year], :group=>params[:attendence_child][:group], :semester=>params[:attendence_child][:semester], :subject=>params[:attendence_child][:subject], :att_date=>params[:attendence_child][:att_date]})
    end
    AttendenceChild.create(myString)
    redirect_to :action=>:attendence_child
  end

def create_model_name
end
  # PUT /attendences/1
  # PUT /attendences/1.json
  def update
    @attendence = Attendence.find(params[:id])

    respond_to do |format|
      if @attendence.update_attributes(params[:attendence])
        format.html { redirect_to @attendence, notice: 'Attendence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attendence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendences/1
  # DELETE /attendences/1.json
  def destroy
    @attendence = Attendence.find(params[:id])
    @attendence.destroy

    respond_to do |format|
      format.html { redirect_to attendences_url }
      format.json { head :no_content }
    end
  end
  def get_attendence_sheet
    # @attendence_children = AttendenceChild.new
    @students = AllRegistrationChild.where(:group=>params[:group],:year=>params[:year])
    render :partial => "attendance".eql?(params[:form_name]) ? "attendence_sheet" : "move_class_sheet"
  end
  def get_attendence_percentage
    @attendence= Attendence.where(:year=>params[:year],:group=>params[:group], :subject=>params[:subject])
    @attendence_child = @attendence.attendence_children
    @all = []
    @attendence_child.each do |x|
      all_registration = AllRegistration.find(x.student_id)
      @all.push(all_registration.hall_ticket || all_registration.roll_no)
      @attendence_child[0].reg_date
      
    end

    @all_students = @attendence_child.map(&:AllRegistration.find(all_registration_id).roll_no)
    
    return if @attendence_child.blank?
    # @registration = AllRegistration.where(:hall_ticket=>params[:hall_ticket]).last
    @total_days = Date.today-@attendence_child[0].reg_date
    render :partial => :graph
  end
  def student_percentage
     move_classes = AllRegistration.where(:hall_ticket=>params[:h_no]).last.move_class_children
     puts "seeeeeeeeeeeee",move_classes,"reeeeeeeeeee",move_classes[0]
     @tot_per=[]
     move_classes.each do |mc|
      working_days = AttendenceChild.where(:year=>mc.year,:group=>mc.group, :semester=>mc.semester.to_s).length
      presence_days = AttendenceChild.where(:year=>mc.year,:group=>mc.group, :semester=>mc.semester.to_s, :presence=>"yes").length
      # subs = Group.find(mc.group).subjects
      #   @subs_with_per=[]
      #   subs.each do |s|
      #     sub_tot_records = AttendenceChild.where(:year=>mc.year,:group=>mc.group, :semester=>mc.semester.to_s,:subject=>mc.subject)
      #     sub_presence_records = AttendenceChild.where(:year=>mc.year,:group=>mc.group, :semester=>mc.semester.to_s,:subject=>mc.subject, :presence=>"yes")
      #     @subs_with_per.push({:sub_name=>s.subject,:sub_per=>(sub_presence_records*100)/sub_tot_records})
      #   end
puts working_days,"00000000000000000",presence_days
        year_sem = mc.semester.blank? ? Year.find(mc.year).year : Semester.find(mc.semester).semester
        presence = presence_days > 0 ? (presence_days*100)/working_days : 0
        @tot_per.push({year_sem=>presence})

      end
        puts @tot_per,"0000000000000000000"
      render :partial=> "attendences/graph"
  end
end