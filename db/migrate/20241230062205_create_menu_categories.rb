class CreateMenuCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :menu_categories, id: :bigint, unsigned: true do |t|
      t.references :restaurant, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'レストランID'
      t.string :name, null: false, comment: 'カテゴリー名'
      t.timestamps
    end
  end
end
