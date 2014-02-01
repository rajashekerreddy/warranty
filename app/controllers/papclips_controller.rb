class PapclipsController < ApplicationController
  # GET /papclips
  # GET /papclips.json
  def index
    @papclips = Papclip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @papclips }
    end
  end

  # GET /papclips/1
  # GET /papclips/1.json
  def show
    @papclip = Papclip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @papclip }
    end
  end

  # GET /papclips/new
  # GET /papclips/new.json
  def new
    @papclip = Papclip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @papclip }
    end
  end

  # GET /papclips/1/edit
  def edit
    @papclip = Papclip.find(params[:id])
  end

  # POST /papclips
  # POST /papclips.json
  def create
    @papclip = Papclip.new(params[:papclip])
    respond_to do |format|
      if @papclip.save
        puts "saveeeeeeeeeeeeeeeeeeeeeeee"
        format.html { redirect_to @papclip, notice: 'Papclip was successfully created.' }
        format.json { render json: @papclip, status: :created, location: @papclip }
      else
        puts "saveeeeeeeeeeeeeeeeeeeeeeee00000000000000000000"
        format.html { render action: "new" }
        format.json { render json: @papclip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /papclips/1
  # PUT /papclips/1.json
  def update
    @papclip = Papclip.find(params[:id])

    respond_to do |format|
      if @papclip.update_attributes(params[:papclip])
        format.html { redirect_to @papclip, notice: 'Papclip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @papclip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /papclips/1
  # DELETE /papclips/1.json
  def destroy
    @papclip = Papclip.find(params[:id])
    @papclip.destroy

    respond_to do |format|
      format.html { redirect_to papclips_url }
      format.json { head :no_content }
    end
  end
end
