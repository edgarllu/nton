class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.integer :edad
      t.string :direccion

      t.timestamps null: false
    end
  end
end
