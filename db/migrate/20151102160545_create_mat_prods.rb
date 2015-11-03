class CreateMatProds < ActiveRecord::Migration
  def change
    create_table :mat_prods do |t|
      t.integer :cantidad
      t.string :Materia_id
      t.string :Produto_id

      t.timestamps null: false
    end
  end
end
