class CfacturasController < ApplicationController
  before_action :set_cfactura, only: [:show, :edit, :update, :destroy]

  # GET /cfacturas
  # GET /cfacturas.json
  def index
    @cfacturas = Cfactura.all
  end

  # GET /cfacturas/1
  # GET /cfacturas/1.json
  def show
  end

  # GET /cfacturas/new
  def new
    @cfactura = Cfactura.new
  end

  # GET /cfacturas/1/edit
  def edit
  end

  # POST /cfacturas
  # POST /cfacturas.json
  def create
    @cfactura = Cfactura.new(cfactura_params)

    respond_to do |format|
      if @cfactura.save
        format.html { redirect_to @cfactura, notice: 'Cabecera de factura creada con éxito.' }
        format.json { render :show, status: :created, location: @cfactura }
      else
        format.html { render :new }
        format.json { render json: @cfactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cfacturas/1
  # PATCH/PUT /cfacturas/1.json
  def update
    respond_to do |format|
      if @cfactura.update(cfactura_params)
        format.html { redirect_to @cfactura, notice: 'Cabecera de factura editada con éxito.' }
        format.json { render :show, status: :ok, location: @cfactura }
      else
        format.html { render :edit }
        format.json { render json: @cfactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cfacturas/1
  # DELETE /cfacturas/1.json
  def destroy
    @cfactura.destroy
    respond_to do |format|
      format.html { redirect_to cfacturas_url, notice: 'Cabecera de factura eliminada con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cfactura
      @cfactura = Cfactura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cfactura_params
      params.require(:cfactura).permit(:num, :fecha, :mneto, :mbruto, :cliente_id)
    end
end
