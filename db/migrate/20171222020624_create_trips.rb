class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
    	t.string :city, null: false
    	t.string :state
    	t.string :country, null: false
    	t.references :user, foreign_key: true
		t.timestamps
    end
  end
end
