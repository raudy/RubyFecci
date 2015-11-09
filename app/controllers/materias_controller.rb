class MateriasController < ApplicationController
  before_action :set_materia, only: [:show, :edit, :update, :destroy]

  # GET /materia
  # GET /materia.json
  def index
    @materias = Materia.all
  end

  # GET /materia/1
  # GET /materia/1.json
  def show
  end

  # GET /materia/new
  def new
    @materia = Materia.new
  end

  # GET /materia/1/edit
  def edit
  end

  # POST /materia
  # POST /materia.json
  def create
    @materia = Materia.new(materia_params)

    respond_to do |format|
      if @materia.save
        format.html { redirect_to @materia, notice: 'Materia was successfully created.' }
        format.json { render :show, status: :created, location: @materia }
      else
        format.html { render :new }
        format.json { render json: @materia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materia/1
  # PATCH/PUT /materia/1.json
  def update
    respond_to do |format|
      if @materia.update(materia_params)
        format.html { redirect_to @materia, notice: 'Materia was successfully updated.' }
        format.json { render :show, status: :ok, location: @materia }
      else
        format.html { render :edit }
        format.json { render json: @materia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materia/1
  # DELETE /materia/1.json
  def destroy
    @materia.destroy
    respond_to do |format|
      format.html { redirect_to materias_url, notice: 'Materia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia
      @materia = Materia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materia_params
      params.require(:materia).permit(:cod, :nombre)
    end
end
