class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
    	t.string :name, null: false
    	t.string :address
   		t.decimal :latitude, null: false
   		t.decimal :longitude, null: false
		t.timestamps
    end
  end
end
