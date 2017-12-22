class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
    	t.references :user, foreign_key: true
    	t.references :trip, foreign_key: true
    	t.string :message, null: false
    	t.integer :rating, null: false
    	t.timestamps
    end
  end
end
