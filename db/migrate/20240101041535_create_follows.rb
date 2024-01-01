class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.belongs_to :followed_user, foreign_key: { to_table: :users }
      t.belongs_to :follower, foreign_key: { to_table: :users }
      t.string :status
      t.timestamps
    end
  end
end
