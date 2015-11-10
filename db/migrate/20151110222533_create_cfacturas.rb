class CreateCfacturas < ActiveRecord::Migration
  def change
    create_table :cfacturas do |t|
      t.integer :num
      t.date :fecha
      t.integer :mneto
      t.integer :mbruto
      t.string :cliente_id

      t.timestamps null: false
    end
  end
end
