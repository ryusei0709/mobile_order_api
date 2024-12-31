class CreateRestaurantTabels < ActiveRecord::Migration[7.2]
  def change
    create_table :restaurant_tabels, id: :bigint, unsigned: true do |t|
      t.references :restaurant, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'レストランID'
      t.string :table_number, null: false, comment: 'テーブルナンバー'
      t.timestamps
    end
    add_index :restaurant_tabels, [ :restaurant_id, :table_number ], unique: true, name: 'index_restaurant_tabels_on_restaurant_id_and_table_number'
  end
end
