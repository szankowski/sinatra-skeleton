class RenameFieldMovieToTitle < ActiveRecord::Migration
  def change
    rename_column :movies, :movie, :title
  end
end