class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
