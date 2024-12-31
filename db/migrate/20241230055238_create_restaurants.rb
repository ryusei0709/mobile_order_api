class CreateRestaurants < ActiveRecord::Migration[7.2]
  def change
    create_table :restaurants, id: :bigint, unsigned: true do |t|
      t.references :corporation, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: '法人ID'
      t.string :name, null: false, comment: '店名'
      t.timestamps
    end
  end
end
