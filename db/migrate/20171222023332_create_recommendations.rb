class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
    	t.string :review_of_rec, null: false
    	t.references :trip, foreign_key: true
    	t.references :site, foreign_key: true
    	t.references :business, foreign_key: true
    	t.references :user, foreign_key: true
      	t.timestamps
    end
  end
end
