class CollegeMastersController < ApplicationController
  # GET /college_masters
  # GET /college_masters.json
  def index
    @college_masters = CollegeMaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @college_masters }
    end
  end

  # GET /college_masters/1
  # GET /college_masters/1.json
  def show
    @college_master = CollegeMaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @college_master }
    end
  end

  # GET /college_masters/new
  # GET /college_masters/new.json
  def new
    @college_master = CollegeMaster.new
    @category = Category.where(:category != '')
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @college_master }
    end
  end

  # GET /college_masters/1/edit
  def edit
    @college_master = CollegeMaster.find(params[:id])
    @category = Category.where(:category != '')
  end

  # POST /college_masters
  # POST /college_masters.json
  def create
    @college_master = CollegeMaster.new(params[:college_master])

    respond_to do |format|
      if @college_master.save
        format.html { redirect_to @college_master, notice: 'College master was successfully created.' }
        format.json { render json: @college_master, status: :created, location: @college_master }
      else
        format.html { render action: "new" }
        format.json { render json: @college_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /college_masters/1
  # PUT /college_masters/1.json
  def update
    @college_master = CollegeMaster.find(params[:id])

    respond_to do |format|
      if @college_master.update_attributes(params[:college_master])
        format.html { redirect_to @college_master, notice: 'College master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @college_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_masters/1
  # DELETE /college_masters/1.json
  def destroy
    @college_master = CollegeMaster.find(params[:id])
    @college_master.destroy

    respond_to do |format|
      format.html { redirect_to college_masters_url }
      format.json { head :no_content }
    end
  end
end
