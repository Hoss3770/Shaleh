class ShalehsController < ApplicationController
  before_action :set_shaleh, only: [:show, :edit, :update, :destroy]

  # GET /shalehs
  # GET /shalehs.json
  def index
    @shalehs = Shaleh.all
  end

  # GET /shalehs/1
  # GET /shalehs/1.json
  def show
  end

  # GET /shalehs/new
  def new
    @shaleh = Shaleh.new
  end

  # GET /shalehs/1/edit
  def edit
  end

  # POST /shalehs
  # POST /shalehs.json
  def create
    @shaleh = Shaleh.new(shaleh_params)

    respond_to do |format|
      if @shaleh.save
        format.html { redirect_to @shaleh, notice: 'Shaleh was successfully created.' }
        format.json { render :show, status: :created, location: @shaleh }
      else
        format.html { render :new }
        format.json { render json: @shaleh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shalehs/1
  # PATCH/PUT /shalehs/1.json
  def update
    respond_to do |format|
      if @shaleh.update(shaleh_params)
        format.html { redirect_to @shaleh, notice: 'Shaleh was successfully updated.' }
        format.json { render :show, status: :ok, location: @shaleh }
      else
        format.html { render :edit }
        format.json { render json: @shaleh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shalehs/1
  # DELETE /shalehs/1.json
  def destroy
    @shaleh.destroy
    respond_to do |format|
      format.html { redirect_to shalehs_url, notice: 'Shaleh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shaleh
      @shaleh = Shaleh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shaleh_params
      params.require(:shaleh).permit(:address, :rooms, :description, :aircon, :references)
    end
end
