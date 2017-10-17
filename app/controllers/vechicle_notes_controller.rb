# controller of Vechicle Notes class
class VechicleNotesController < ApplicationController
  before_action :set_vechicle_note, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /vechicle_notes
  # GET /vechicle_notes.json
  def index
    @vechicle_notes = VechicleNote.all
  end

  # GET /vechicle_notes/1
  # GET /vechicle_notes/1.json
  def show
  end

  # GET /vechicle_notes/new
  def new
    @vechicle_note = VechicleNote.new
  end

  # GET /vechicle_notes/1/edit
  def edit
  end

  # POST /vechicle_notes
  # POST /vechicle_notes.json
  def create
    @vechicle_note = VechicleNote.new(vechicle_note_params)

    respond_to do |format|
      if @vechicle_note.save
        format.html { redirect_to @vechicle_note, notice: 'Dodano notatkę.' }
        format.json { render :show, status: :created, location: @vechicle_note }
      else
        format.html { render :new }
        format.json { render json: @vechicle_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vechicle_notes/1
  # PATCH/PUT /vechicle_notes/1.json
  def update
    respond_to do |format|
      if @vechicle_note.update(vechicle_note_params)
        format.html { redirect_to @vechicle_note, notice: 'Zmieniono notatkę.' }
        format.json { render :show, status: :ok, location: @vechicle_note }
      else
        format.html { render :edit }
        format.json { render json: @vechicle_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vechicle_notes/1
  # DELETE /vechicle_notes/1.json
  def destroy
    @vechicle_note.destroy
    respond_to do |format|
      format.html { redirect_to vechicle_notes_url, notice: 'Usunięto notatkę.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vechicle_note
      @vechicle_note = VechicleNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vechicle_note_params
      params.require(:vechicle_note).permit(:name, :user_id, :vechicle_id)
    end
end
