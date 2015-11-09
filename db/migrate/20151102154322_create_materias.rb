class CreateMaterias < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.integer :cod
      t.string :nombre

      t.timestamps null: false
    end
  end
end
