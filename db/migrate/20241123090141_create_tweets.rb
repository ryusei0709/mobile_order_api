class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :content, :null => false
      t.timestamps
    end
  end
end
