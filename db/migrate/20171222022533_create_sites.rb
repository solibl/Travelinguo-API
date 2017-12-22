class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
    	t.string :name, null: false
    	t.string :street_address
    	t.string :city
    	t.string :state
    	t.string :country
   		t.decimal :latitude, null: false
   		t.decimal :longitude, null: false
		t.timestamps
    end
  end
end
