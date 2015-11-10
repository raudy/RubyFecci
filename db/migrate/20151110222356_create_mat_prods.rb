class CreateMatProds < ActiveRecord::Migration
  def change
    create_table :mat_prods do |t|
      t.integer :cantidad
      t.string :materia_id
      t.string :producto_id

      t.timestamps null: false
    end
  end
end
