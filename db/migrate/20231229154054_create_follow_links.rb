class CreateFollowLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :follow_links do |t|
      t.belongs_to :follower, foreign_key: { to_table: :users }
      t.belongs_to :following, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
