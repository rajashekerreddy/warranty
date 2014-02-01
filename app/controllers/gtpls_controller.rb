class GtplsController < ApplicationController
  # GET /gtpls
  # GET /gtpls.json
  def index
    @gtpls = Gtpl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gtpls }
    end
  end

  # GET /gtpls/1
  # GET /gtpls/1.json
  def show
    @gtpl = Gtpl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gtpl }
    end
  end

  # GET /gtpls/new
  # GET /gtpls/new.json
  def new
    @gtpl = Gtpl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gtpl }
    end
  end

  # GET /gtpls/1/edit
  def edit
    @gtpl = Gtpl.find(params[:id])
  end

  # POST /gtpls
  # POST /gtpls.json
  def create
    @gtpl = Gtpl.new(params[:gtpl])

    respond_to do |format|
      if @gtpl.save
        format.html { redirect_to @gtpl, notice: 'Gtpl was successfully created.' }
        format.json { render json: @gtpl, status: :created, location: @gtpl }
      else
        format.html { render action: "new" }
        format.json { render json: @gtpl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gtpls/1
  # PUT /gtpls/1.json
  def update
    @gtpl = Gtpl.find(params[:id])

    respond_to do |format|
      if @gtpl.update_attributes(params[:gtpl])
        format.html { redirect_to @gtpl, notice: 'Gtpl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gtpl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gtpls/1
  # DELETE /gtpls/1.json
  def destroy
    @gtpl = Gtpl.find(params[:id])
    @gtpl.destroy

    respond_to do |format|
      format.html { redirect_to gtpls_url }
      format.json { head :no_content }
    end
  end
end
