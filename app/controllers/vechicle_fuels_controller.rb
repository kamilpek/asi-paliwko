class VechicleFuelsController < ApplicationController
  before_action :set_vechicle_fuel, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /vechicle_fuels
  # GET /vechicle_fuels.json
  def index
    @vechicle_fuels = VechicleFuel.all
  end

  # GET /vechicle_fuels/1
  # GET /vechicle_fuels/1.json
  def show
  end

  # GET /vechicle_fuels/new
  def new
    @vechicle_fuel = VechicleFuel.new
  end

  # GET /vechicle_fuels/1/edit
  def edit
  end

  # POST /vechicle_fuels
  # POST /vechicle_fuels.json
  def create
    @vechicle_fuel = VechicleFuel.new(vechicle_fuel_params)

    respond_to do |format|
      if @vechicle_fuel.save
        fuel_number
        format.html { redirect_to @vechicle_fuel, notice: 'Dodano tankowanie.' }
        format.json { render :show, status: :created, location: @vechicle_fuel }
      else
        format.html { render :new }
        format.json { render json: @vechicle_fuel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vechicle_fuels/1
  # PATCH/PUT /vechicle_fuels/1.json
  def update
    respond_to do |format|
      if @vechicle_fuel.update(vechicle_fuel_params)
        format.html { redirect_to @vechicle_fuel, notice: 'Zmodyfikowano tankowanie.' }
        format.json { render :show, status: :ok, location: @vechicle_fuel }
      else
        format.html { render :edit }
        format.json { render json: @vechicle_fuel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vechicle_fuels/1
  # DELETE /vechicle_fuels/1.json
  def destroy
    @vechicle_fuel.destroy
    respond_to do |format|
      format.html { redirect_to vechicle_fuels_url, notice: 'Usunięto tankowanie.' }
      format.json { head :no_content }
    end
  end

  def fuel_number
    @number = VechicleFuel.order(:id).pluck(:number).second_to_last.to_i
    VechicleFuel.update(@vechicle_fuel.id, :number => @number+1)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vechicle_fuel
      @vechicle_fuel = VechicleFuel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vechicle_fuel_params
      params.require(:vechicle_fuel).permit(:company, :user_id, :vechicle_id, :value, :mileage, :desc, :cost, :number)
    end
end
