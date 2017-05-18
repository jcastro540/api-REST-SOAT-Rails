class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
    	t.timestamps
	    t.string     :numeroTdc
	    t.string     :nombreTitular
	    t.string     :fechaVen
	    t.text       :cvv
	    t.text       :numCuotas
    end
  end
end
