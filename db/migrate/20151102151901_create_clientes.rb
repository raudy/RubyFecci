class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :rut
      t.string :nombre
      t.string :direccion
      t.integer :fono

      t.timestamps null: false
    end
  end
end
