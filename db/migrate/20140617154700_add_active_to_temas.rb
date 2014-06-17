class AddActiveToTemas < ActiveRecord::Migration
  def change
    add_column :temas, :active, :boolean
  end
end
