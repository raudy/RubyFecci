class CreateEntregas < ActiveRecord::Migration
  def change
    create_table :entregas do |t|
      t.integer :cantidad
      t.date :fecha
      t.string :cliente_id
      t.string :materia_id

      t.timestamps null: false
    end
  end
end
