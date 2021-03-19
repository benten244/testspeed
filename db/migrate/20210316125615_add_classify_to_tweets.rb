class AddClassifyToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :classify, :string
  end
end
