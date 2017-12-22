class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
    	t.string :name, null: false
    	t.integer :type, null: false
    	t.string :yelp_link
    	t.string :address, null: false
        t.string :city, null: false
        t.string :state
        t.string :country, null: false
    	t.string :phone_number
      	t.timestamps
    end
  end
end
