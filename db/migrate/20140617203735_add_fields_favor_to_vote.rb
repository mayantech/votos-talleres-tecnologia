class AddFieldsFavorToVote < ActiveRecord::Migration
  def change
    add_column :votes, :favor, :integer
    add_column :votes, :contra, :integer
  end
end
