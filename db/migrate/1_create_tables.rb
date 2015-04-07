class CreateTables < ActiveRecord::Migration

    def change
        create_table :users do |t|
            t.string :username
            t.string :email
            t.string :password
            t.timestamps
        end

        create_table :movies do |t|
            t.string :movie
            t.timestamps
        end

        create_table :ratings do |t|
            t.integer :rate
            t.timestamps
        end

        create_table :posts do |t|
            t.text  :post
            t.timestamps
        end

        create_Table :actors do |t|
            t.string :name
            t.string :gender
            t.string :age
            t.string :country
            t.string :city
            t.string :province
            t.text   :bio
            t.string  :born
            t.boolean :star
            t.timestamps
        end


    end

end
