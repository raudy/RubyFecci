class CreateDfacturas < ActiveRecord::Migration
  def change
    create_table :dfacturas do |t|
      t.integer :cantidad
      t.integer :hh
      t.string :Producto_id
      t.string :cfactura_id

      t.timestamps null: false
    end
  end
end
