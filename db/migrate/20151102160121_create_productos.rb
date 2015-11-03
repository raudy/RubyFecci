class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :cod
      t.string :nombre
      t.string :categoria_id

      t.timestamps null: false
    end
  end
end
