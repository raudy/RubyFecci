class DfacturasController < ApplicationController
  before_action :set_dfactura, only: [:show, :edit, :update, :destroy]

  # GET /dfacturas
  # GET /dfacturas.json
  def index
    @dfacturas = Dfactura.all
  end

  # GET /dfacturas/1
  # GET /dfacturas/1.json
  def show
  end

  # GET /dfacturas/new
  def new
    @dfactura = Dfactura.new
  end

  # GET /dfacturas/1/edit
  def edit
  end

  # POST /dfacturas
  # POST /dfacturas.json
  def create
    @dfactura = Dfactura.new(dfactura_params)

    respond_to do |format|
      if @dfactura.save
        format.html { redirect_to @dfactura, notice: 'Detalle de factura creado con éxito.' }
        format.json { render :show, status: :created, location: @dfactura }
      else
        format.html { render :new }
        format.json { render json: @dfactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dfacturas/1
  # PATCH/PUT /dfacturas/1.json
  def update
    respond_to do |format|
      if @dfactura.update(dfactura_params)
        format.html { redirect_to @dfactura, notice: 'Detalle de factura editado con éxito.' }
        format.json { render :show, status: :ok, location: @dfactura }
      else
        format.html { render :edit }
        format.json { render json: @dfactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dfacturas/1
  # DELETE /dfacturas/1.json
  def destroy
    @dfactura.destroy
    respond_to do |format|
      format.html { redirect_to dfacturas_url, notice: 'Detalle de factura eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dfactura
      @dfactura = Dfactura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dfactura_params
      params.require(:dfactura).permit(:cantidad, :hh, :producto_id, :cfactura_id)
    end
end
