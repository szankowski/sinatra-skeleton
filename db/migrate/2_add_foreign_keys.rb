class AddForeignKeys < ActiveRecord::Migration
    def change
        change_table :movies do |t|
            t.references :user
            end 

          change_table :ratings do |t|
            t.references :movie
            t.references :user
            end
    
          change_table :posts do |t|
            t.references :user
            end
    
          change_table :actors do |t|
            t.references :movie
            end

          change_table :posts do |t|
            t.references :movie
            end

          change_table :roles do |t|
            t.references :movie
            t.references :actor
            end  

    end
end