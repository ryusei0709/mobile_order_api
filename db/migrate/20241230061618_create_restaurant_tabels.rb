class CreateRestaurantTabels < ActiveRecord::Migration[7.2]
  def change
    create_table :restaurant_tabels, id: :bigint, unsigned: true do |t|
      t.references :restaurant, null: false, foreign_key: true, type: :bigint, unsigned: true,comment: 'レストランID'
      t.string :table_number, null: false, comment: 'テーブルナンバー'
      t.timestamps
    end
  end
end
