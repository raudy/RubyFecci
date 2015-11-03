class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :user
      t.string :pass

      t.timestamps null: false
    end
  end
end
