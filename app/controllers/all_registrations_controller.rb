class AllRegistrationsController < ApplicationController
  # GET /all_registrations
  # GET /all_registrations.json
  def index
    @all_registrations = AllRegistration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @all_registrations }
    end
  end

  # GET /all_registrations/1
  # GET /all_registrations/1.json
  def show
    @all_registration = AllRegistration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @all_registration }
    end
  end

  # GET /all_registrations/new
  # GET /all_registrations/new.json
  def new
    @all_registration = AllRegistration.new
    @all_registration.reg_no=number_retrive("REG")
    @college_master = CollegeMaster.last
    @years = which_category.years.find(:all)
     # @year1.map!(&:year)
    @semesters =  "B-Tech".include?(@college_master.category) ? @category.semesters : "" unless @college_master.blank?
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @all_registration }
    end
  end

  # GET /all_registrations/1/edit
  def edit
    @college_master = CollegeMaster.last
    @year = Category.find(@college_master.category).years !@college_master.blank?
    @all_registration = AllRegistration.find(params[:id])
  end

  # POST /all_registrations
  # POST /all_registrations.json
  def create
    @all_registration = AllRegistration.new(params[:all_registration])
    # mv = MoveClass.findgroupyearsem(params[:group],params[:year], :semester=>params[:semester])
    respond_to do |format|
      if @all_registration.save
        @all_registration.move_class_children.create(params[:all_registration_children])
        # @all_registration.move_class_children.create(:group=>params[:group],:year=>params[:year], :semester=>params[:semester])
        # mv = MoveClass.create({:group=>params[:group], :year=>params[:year], :semester=>params[:semester]}) if mv.blank?
        # mv.move_class_children.create(:all_registration_id=>@all_registration.id)
        number_save("REG",@all_registration.reg_no.split("REG")[1])
        format.html { redirect_to @all_registration, notice: 'All registration was successfully created.' }
        format.json { render json: @all_registration, status: :created, location: @all_registration }
      else
        format.html { render action: "new" }
        format.json { render json: @all_registration.errors, status: :unprocessable_entity }
      end
      
    end
  end

  # PUT /all_registrations/1
  # PUT /all_registrations/1.json
  def update
    @all_registration = AllRegistration.find(params[:id])

    respond_to do |format|
      if @all_registration.update_attributes(params[:all_registration])
        format.html { redirect_to @all_registration, notice: 'All registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @all_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_registrations/1
  # DELETE /all_registrations/1.json
  def destroy
    @all_registration = AllRegistration.find(params[:id])
    @all_registration.destroy

    respond_to do |format|
      format.html { redirect_to all_registrations_url }
      format.json { head :no_content }
    end
  end
  def get_groups_years
      get_groups_years={}
      puts params[:type],"9999999999",which_category,params[:category],params[:type],"oooooooooooooooooo"
      if params[:type] == "year"
        Year.find(params[:category]).groups.each do |x|
          get_groups_years.store(x.id,x.group)
        end
      elsif params[:type] == "group"
        Group.find(params[:category]).subjects.each do |x|
          get_groups_years.store(x.id,x.subject)
        end
      end
    render :json => get_groups_years
  end

  # def get_groups_years
  #     get_groups_years={}
  #     puts params[:type],"9999999999",which_category,params[:category],params[:type],"oooooooooooooooooo"
  #     if params[:type] == "category"
  #       cat = Category.find(params[:category])
  #       cat.years.each do |x|
  #         get_groups_years.store(x.id,x.year)
  #       end
  #     else
  #       yr = Year.find(params[:category])
  #       yr.groups.each do |x|
  #         get_groups_years.store(x.id,x.group)
  #       end
  #     end
  #   render :json => get_groups_years
  # end
end