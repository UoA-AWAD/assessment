class EmissionsController < ApplicationController
  before_action :set_emission, only: [:show, :edit, :update, :destroy]

  # GET /emissions
  # GET /emissions.json
  def index
    @emissions = Emission.all
  end

  # GET /emissions/1
  # GET /emissions/1.json
  def show
    @emissions = Emission.where("continent_id = ?", @emission.continent)
  end

  # GET /emissions/new
  def new
    @emission = Emission.new
  end

  # GET /emissions/1/edit
  def edit
  end

  # POST /emissions
  # POST /emissions.json
  def create
    @emission = Emission.new(emission_params)

    respond_to do |format|
      if @emission.save
        format.html { redirect_to @emission, notice: 'Emission was successfully created.' }
        format.json { render :show, status: :created, location: @emission }
      else
        format.html { render :new }
        format.json { render json: @emission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emissions/1
  # PATCH/PUT /emissions/1.json
  def update
    respond_to do |format|
      if @emission.update(emission_params)
        format.html { redirect_to @emission, notice: 'Emission was successfully updated.' }
        format.json { render :show, status: :ok, location: @emission }
      else
        format.html { render :edit }
        format.json { render json: @emission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emissions/1
  # DELETE /emissions/1.json
  def destroy
    @emission.destroy
    respond_to do |format|
      format.html { redirect_to emissions_url, notice: 'Emission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emission
      @emission = Emission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emission_params
      params.require(:emission).permit(:continent_id, :year, :pollution)
    end
end
