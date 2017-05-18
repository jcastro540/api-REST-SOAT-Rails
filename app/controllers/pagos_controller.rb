class PagosController < ApplicationController
  def index
    @pagos = Pago.all
    render json: @pagos
  end

  def create
    @pago = Pago.new(pago_params)
    if @pago.save
      render json: @pago
    end
  end

  def show
    @pago = Pago.find params[:id]
    render json: @pago
  end


  def update
     @pago = Pago.find params[:id]
    if @pago.update_attributes(params[:pago])
      render json: @pago
    end
  end

  def destroy
    @pago = Pago.find params[:id]
    @pago.destroy
  end

  private

  def pago_params
   params.permit(:id, :numeroTdc, :nombreTitular, :fechaVen, :cvv, :numCuotas)
  end

end
