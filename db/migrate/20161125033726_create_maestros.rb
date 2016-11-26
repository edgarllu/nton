class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :nombre
      t.integer :edad
      t.string :direccion

      t.timestamps null: false
    end
  end
end
