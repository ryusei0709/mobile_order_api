class CreateCarts < ActiveRecord::Migration[7.2]
  def change
    create_table :carts, id: :bigint, unsigned: true  do |t|
      t.references :user, null: false, foreign_key: true, type: :bigint, unsigned: true, comment: 'ユーザーID'
      t.timestamps
    end
  end
end
