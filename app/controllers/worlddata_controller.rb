class WorlddataController < ApplicationController
  before_action :set_worlddatum, only: [:show, :edit, :update, :destroy]

  # GET /worlddata
  # GET /worlddata.json
  def index
    @worlddata = Worlddatum.all
  end

  # GET /worlddata/1
  # GET /worlddata/1.json
  def show
  end

  # GET /worlddata/new
  def new
    @worlddatum = Worlddatum.new
  end

  # GET /worlddata/1/edit
  def edit
  end

  # POST /worlddata
  # POST /worlddata.json
  def create
    @worlddatum = Worlddatum.new(worlddatum_params)

    respond_to do |format|
      if @worlddatum.save
        format.html { redirect_to @worlddatum, notice: 'Worlddatum was successfully created.' }
        format.json { render :show, status: :created, location: @worlddatum }
      else
        format.html { render :new }
        format.json { render json: @worlddatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worlddata/1
  # PATCH/PUT /worlddata/1.json
  def update
    respond_to do |format|
      if @worlddatum.update(worlddatum_params)
        format.html { redirect_to @worlddatum, notice: 'Worlddatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @worlddatum }
      else
        format.html { render :edit }
        format.json { render json: @worlddatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worlddata/1
  # DELETE /worlddata/1.json
  def destroy
    @worlddatum.destroy
    respond_to do |format|
      format.html { redirect_to worlddata_url, notice: 'Worlddatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worlddatum
      @worlddatum = Worlddatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worlddatum_params
      params.require(:worlddatum).permit(:Continent, :Country, :Population, :Population_Density, :Uban_pop, :Uban_pop_coastal, :GDP_per_capita, :Land_Area, :Cropland, :Pasture, :Water_per_capita, :Commercial_Energy_Consumption, :Traditional_Fuel_Consumption, :Commercial_Hydroelec_Consumption)
    end
end
