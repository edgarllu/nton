class CreateMaestroSalon < ActiveRecord::Migration
  def change
    create_table :maestros_salons, id: false do |t|
      t.references :maestro, index: true, foreign_key: true
      t.references :salon, index: true, foreign_key: true
    end
  end
end
