class CollegeFeesController < ApplicationController
  # GET /college_fees
  # GET /college_fees.json
  def index
    @college_fees = CollegeFee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @college_fees }
    end
  end

  # GET /college_fees/1
  # GET /college_fees/1.json
  def show
    @college_fee = CollegeFee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @college_fee }
    end
  end

  # GET /college_fees/new
  # GET /college_fees/new.json
  def new
    @college_fee = CollegeFee.new
     
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @college_fee }
    end
  end

  # GET /college_fees/1/edit
  def edit
    @college_fee = CollegeFee.find(params[:id])
  end

  # POST /college_fees
  # POST /college_fees.json
  def create
    @college_fee = CollegeFee.new(params[:college_fee])

    respond_to do |format|
      if @college_fee.save
        format.html { redirect_to @college_fee, notice: 'College fee was successfully created.' }
        format.json { render json: @college_fee, status: :created, location: @college_fee }
      else
        format.html { render action: "new" }
        format.json { render json: @college_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /college_fees/1
  # PUT /college_fees/1.json
  def update
    @college_fee = CollegeFee.find(params[:id])

    respond_to do |format|
      if @college_fee.update_attributes(params[:college_fee])
        format.html { redirect_to @college_fee, notice: 'College fee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @college_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_fees/1
  # DELETE /college_fees/1.json
  def destroy
    @college_fee = CollegeFee.find(params[:id])
    @college_fee.destroy

    respond_to do |format|
      format.html { redirect_to college_fees_url }
      format.json { head :no_content }
    end
  end
end