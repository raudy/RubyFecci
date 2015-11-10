class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materia do |t|
      t.integer :cod
      t.string :nombre

      t.timestamps null: false
    end
  end
end
