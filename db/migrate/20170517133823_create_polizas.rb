class CreatePolizas < ActiveRecord::Migration[5.1]
  def change
    create_table :polizas do |t|
    	t.timestamps
	    t.string     :placa
	    t.string     :clase
	    t.string     :subtipo
	    t.text       :edad
	    t.string     :fechaInicio
	    t.string     :fechaVen
	    t.string     :tasa
	    t.string     :valorPrima
	    t.string     :fosyga
	    t.string     :subtotal
	    t.string     :total
    end
  end
end
