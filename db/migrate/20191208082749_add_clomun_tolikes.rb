class AddClomunTolikes < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :likes_count, :integer
  end
end
