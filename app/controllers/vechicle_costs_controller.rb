class VechicleCostsController < ApplicationController
  before_action :set_vechicle_cost, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /vechicle_costs
  # GET /vechicle_costs.json
  def index
    @vechicle_costs = VechicleCost.all
  end

  # GET /vechicle_costs/1
  # GET /vechicle_costs/1.json
  def show
  end

  # GET /vechicle_costs/new
  def new
    @vechicle_cost = VechicleCost.new
  end

  # GET /vechicle_costs/1/edit
  def edit
  end

  # POST /vechicle_costs
  # POST /vechicle_costs.json
  def create
    @vechicle_cost = VechicleCost.new(vechicle_cost_params)

    respond_to do |format|
      if @vechicle_cost.save
        format.html { redirect_to @vechicle_cost, notice: 'Dodano koszt.' }
        format.json { render :show, status: :created, location: @vechicle_cost }
      else
        format.html { render :new }
        format.json { render json: @vechicle_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vechicle_costs/1
  # PATCH/PUT /vechicle_costs/1.json
  def update
    respond_to do |format|
      if @vechicle_cost.update(vechicle_cost_params)
        format.html { redirect_to @vechicle_cost, notice: 'Zmodyfikowano koszt.' }
        format.json { render :show, status: :ok, location: @vechicle_cost }
      else
        format.html { render :edit }
        format.json { render json: @vechicle_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vechicle_costs/1
  # DELETE /vechicle_costs/1.json
  def destroy
    @vechicle_cost.destroy
    respond_to do |format|
      format.html { redirect_to vechicle_costs_url, notice: 'Zmieniono koszt.' }
      format.json { head :no_content }
    end
  end

  def print_resume_month
    if params[:search].nil?
      @vechicle_costs = VechicleCost.all
    else
      vechicle = Vechicle.where(id:params[:search]).pluck(:id).last
      @vechicle_costs = VechicleCost.where(vechicle_id:vechicle)
      params[:search] = nil
    end
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @vechicle_costs = @vechicle_costs.where("to_char(created_at,'YYYY-MM') = ?", @date.strftime("%Y-%m"))
  end

  def print_resume_year
    if params[:search].nil?
      @vechicle_costs = VechicleCost.all
    else
      vechicle = Vechicle.where(id:params[:search]).pluck(:id).last
      @vechicle_costs = VechicleCost.where(vechicle_id:vechicle)
      params[:search] = nil
    end
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @vechicle_costs = @vechicle_costs.where("to_char(created_at,'YYYY') = ?", @date.strftime("%Y"))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vechicle_cost
      @vechicle_cost = VechicleCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vechicle_cost_params
      params.require(:vechicle_cost).permit(:name, :user_id, :vechicle_id, :cost, :desc)
    end
end
