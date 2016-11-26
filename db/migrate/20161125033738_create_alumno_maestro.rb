class CreateAlumnoMaestro < ActiveRecord::Migration
  def change
    create_table :alumnos_maestros, id: false do |t|
      t.references :alumno, index: true, foreign_key: true
      t.references :maestro, index: true, foreign_key: true
    end
  end
end
