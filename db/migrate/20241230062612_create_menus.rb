class CreateMenus < ActiveRecord::Migration[7.2]
  def change
    create_table :menus, id: :bigint, unsigned: true do |t|
      t.references :menu_category, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'メニューカテゴリーID'
      t.references :restaurant, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'レストランID'
      t.string :title, null: false, comment: 'メニュータイトル'
      t.string :description, null: false, comment: 'メニュー説明'
      t.string :image, null: false, comment: 'メニュー画像'
      t.bigint :price, null: false, unsigned: true, comment: '値段'
      t.timestamps
    end
  end
end
