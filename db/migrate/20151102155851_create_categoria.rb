class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.integer :cod
      t.string :nombre

      t.timestamps null: false
    end
  end
end
