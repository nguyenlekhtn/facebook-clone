class DropFollowLink < ActiveRecord::Migration[7.0]
  def change
    drop_table :follow_links
  end
end
