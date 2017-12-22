class CreateFollowings < ActiveRecord::Migration[5.1]
  def change
    create_table :followings do |t|
        t.references :follower_id, index: true, foreign_key: { to_table: :users }
        t.references :followed_id, index: true, foreign_key: { to_table: :users }
    	t.timestamps
    end
    add_index :followings, [:follower_id, :followed_id], unique: true
  end
end
