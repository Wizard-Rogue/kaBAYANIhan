class EvemtsController < ApplicationController
  # GET /evemts
  # GET /evemts.json
  def index
    @evemts = Evemt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evemts }
    end
  end

  # GET /evemts/1
  # GET /evemts/1.json
  def show
    @evemt = Evemt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evemt }
    end
  end

  # GET /evemts/new
  # GET /evemts/new.json
  def new
    @evemt = Evemt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evemt }
    end
  end

  # GET /evemts/1/edit
  def edit
    @evemt = Evemt.find(params[:id])
  end

  # POST /evemts
  # POST /evemts.json
  def create
    @evemt = Evemt.new(params[:evemt])

    respond_to do |format|
      if @evemt.save
        format.html { redirect_to @evemt, notice: 'Evemt was successfully created.' }
        format.json { render json: @evemt, status: :created, location: @evemt }
      else
        format.html { render action: "new" }
        format.json { render json: @evemt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evemts/1
  # PUT /evemts/1.json
  def update
    @evemt = Evemt.find(params[:id])

    respond_to do |format|
      if @evemt.update_attributes(params[:evemt])
        format.html { redirect_to @evemt, notice: 'Evemt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evemt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evemts/1
  # DELETE /evemts/1.json
  def destroy
    @evemt = Evemt.find(params[:id])
    @evemt.destroy

    respond_to do |format|
      format.html { redirect_to evemts_url }
      format.json { head :no_content }
    end
  end
end
