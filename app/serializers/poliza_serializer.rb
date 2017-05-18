class PolizaSerializer < ActiveModel::Serializer
  attributes :id, :placa, :clase, :subtipo, :edad,:fechaInicio,:fechaVen,:tasa, :valorPrima, :fosyga,:subtotal,:total 
end
