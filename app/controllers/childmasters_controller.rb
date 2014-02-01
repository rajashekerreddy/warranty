class ChildmastersController < ApplicationController
  # GET /childmasters
  # GET /childmasters.json
  def index
    @childmasters = Childmaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @childmasters }
    end
  end

  # GET /childmasters/1
  # GET /childmasters/1.json
  def show
    @childmaster = Childmaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @childmaster }
    end
  end

  # GET /childmasters/new
  # GET /childmasters/new.json
  def new
    @childmaster = Childmaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @childmaster }
    end
  end

  # GET /childmasters/1/edit
  def edit
    @childmaster = Childmaster.find(params[:id])
  end

  # POST /childmasters
  # POST /childmasters.json
  def create
    @childmaster = Childmaster.new(params[:childmaster])

    respond_to do |format|
      if @childmaster.save
        format.html { redirect_to @childmaster, notice: 'Childmaster was successfully created.' }
        format.json { render json: @childmaster, status: :created, location: @childmaster }
      else
        format.html { render action: "new" }
        format.json { render json: @childmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /childmasters/1
  # PUT /childmasters/1.json
  def update
    @childmaster = Childmaster.find(params[:id])

    respond_to do |format|
      if @childmaster.update_attributes(params[:childmaster])
        format.html { redirect_to @childmaster, notice: 'Childmaster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @childmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /childmasters/1
  # DELETE /childmasters/1.json
  def destroy
    @childmaster = Childmaster.find(params[:id])
    @childmaster.destroy

    respond_to do |format|
      format.html { redirect_to childmasters_url }
      format.json { head :no_content }
    end
  end
end
