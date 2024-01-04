class AddNullConstrainst < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.rename :content, :body
      t.change_null :body, true, ''
    end

    change_table :comments do |t|
      t.rename :context, :body
      t.change_null :body, true, ''
    end
  end
end
