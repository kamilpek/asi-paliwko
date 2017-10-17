# controller of Vechicle Param Types class
class VechicleParamTypesController < ApplicationController
  before_action :set_vechicle_param_type, only: [:show, :edit, :update, :destroy]

  # GET /vechicle_param_types
  # GET /vechicle_param_types.json
  def index
    @vechicle_param_types = VechicleParamType.all
  end

  # GET /vechicle_param_types/1
  # GET /vechicle_param_types/1.json
  def show
  end

  # GET /vechicle_param_types/new
  def new
    @vechicle_param_type = VechicleParamType.new
  end

  # GET /vechicle_param_types/1/edit
  def edit
  end

  # POST /vechicle_param_types
  # POST /vechicle_param_types.json
  def create
    @vechicle_param_type = VechicleParamType.new(vechicle_param_type_params)

    respond_to do |format|
      if @vechicle_param_type.save
        format.html { redirect_to @vechicle_param_type, notice: 'Vechicle param type was successfully created.' }
        format.json { render :show, status: :created, location: @vechicle_param_type }
      else
        format.html { render :new }
        format.json { render json: @vechicle_param_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vechicle_param_types/1
  # PATCH/PUT /vechicle_param_types/1.json
  def update
    respond_to do |format|
      if @vechicle_param_type.update(vechicle_param_type_params)
        format.html { redirect_to @vechicle_param_type, notice: 'Vechicle param type was successfully updated.' }
        format.json { render :show, status: :ok, location: @vechicle_param_type }
      else
        format.html { render :edit }
        format.json { render json: @vechicle_param_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vechicle_param_types/1
  # DELETE /vechicle_param_types/1.json
  def destroy
    @vechicle_param_type.destroy
    respond_to do |format|
      format.html { redirect_to vechicle_param_types_url, notice: 'Vechicle param type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vechicle_param_type
      @vechicle_param_type = VechicleParamType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vechicle_param_type_params
      params.require(:vechicle_param_type).permit(:name, :priority, :status)
    end
end
