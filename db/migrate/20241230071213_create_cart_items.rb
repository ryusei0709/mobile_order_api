class CreateCartItems < ActiveRecord::Migration[7.2]
  def change
    create_table :cart_items, id: :bigint, unsigned: true  do |t|
      t.references :cart, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: '注文ユーザーID'
      t.references :menu, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'メニューID'
      t.bigint :quantity, null: false, unsigned: true, comment: '個数'
      t.timestamps
    end
  end
end
