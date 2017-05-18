class PolizasController < ApplicationController
  def index
    @polizas = Poliza.all
    render json: @polizas
  end

  def create
    @poliza = Poliza.new(poliza_params)
    if @poliza.save
      render json: @poliza
    end
  end

  def show
    @pago = Poliza.find params[:id]
    render json: @poliza
  end

  def update
    @poliza = Poliza.find params[:id]
    if @poliza.update_attributes(params[:poliza])
      render json: @poliza
    end
  end

  def destroy
    @poliza = Poliza.find params[:id]
    @poliza.destroy
  end


  private

  def poliza_params
   params.permit(:id, :placa, :clase, :subtipo, :edad,:fechaInicio,:fechaVen,:tasa, :valorPrima, :fosyga,:subtotal,:total)
  end
end
