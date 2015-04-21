class AddColumnsTableMovies < ActiveRecord::Migration
  def change
    add_column :movies, :director, :string
    add_column :movies, :duration, :integer
    add_column :movies, :genre, :string
  end
end