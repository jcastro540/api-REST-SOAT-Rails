class PagoSerializer < ActiveModel::Serializer
   attributes :id, :numeroTdc, :nombreTitular, :fechaVen, :cvv, :numCuotas
end
