# controller of Vechicle Params class
class VechicleParamsController < ApplicationController
  before_action :set_vechicle_param, only: [:show, :edit, :update, :destroy]

  # GET /vechicle_params
  # GET /vechicle_params.json
  def index
    @vechicle_params = VechicleParam.all
  end

  # GET /vechicle_params/1
  # GET /vechicle_params/1.json
  def show
  end

  # GET /vechicle_params/new
  def new
    @vechicle_param = VechicleParam.new
  end

  # GET /vechicle_params/1/edit
  def edit
  end

  # POST /vechicle_params
  # POST /vechicle_params.json
  def create
    @vechicle_param = VechicleParam.new(vechicle_param_params)

    respond_to do |format|
      if @vechicle_param.save
        format.html { redirect_to vechicle_parameters_vechicle_path(@vechicle_param.vechicle_id), notice: 'Parametr dodany.' }
        format.json { render :show, status: :created, location: @vechicle_param }
      else
        format.html { render :new }
        format.json { render json: @vechicle_param.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vechicle_params/1
  # PATCH/PUT /vechicle_params/1.json
  def update
    respond_to do |format|
      if @vechicle_param.update(vechicle_param_params)
        format.html { redirect_to @vechicle_param, notice: 'Paramter zmodyfikowany.' }
        format.json { render :show, status: :ok, location: @vechicle_param }
      else
        format.html { render :edit }
        format.json { render json: @vechicle_param.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vechicle_params/1
  # DELETE /vechicle_params/1.json
  def destroy
    @vechicle_param.destroy
    respond_to do |format|
      format.html { redirect_to vechicle_params_url, notice: 'Paramter usunięty.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vechicle_param
      @vechicle_param = VechicleParam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vechicle_param_params
      params.require(:vechicle_param).permit(:vechicle_param_type_id, :user_id, :value, :desc, :vechicle_id)
    end
end
