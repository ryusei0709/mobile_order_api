class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders, id: :bigint, unsigned: true do |t|
      t.references :user, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: '注文ユーザーID'
      t.references :menu, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'メニューID'
      t.references :restaurant, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'レストランID'
      t.references :restaurant_tabel, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'レストランテーブルID'
      t.bigint :total_price, null: false, unsigned: true, comment: '合計金額'
      t.boolean :is_order_status, null: false, default: false, unsigned: true, comment: '注文ステータス'
      t.timestamps
    end
  end
end
