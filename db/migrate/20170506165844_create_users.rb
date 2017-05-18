class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps
      t.string     :full_name
      t.string     :password_digest
      t.string     :token
      t.text       :description
      t.string     :nombre
      t.string     :apellido
      t.string     :email
      t.string     :telefono
      t.string     :role
    end
     add_index :users, :token, unique: true
  end
end
