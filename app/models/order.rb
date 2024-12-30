# == Schema Information
#
# Table name: orders
#
#  id                                        :bigint           unsigned, not null, primary key
#  is_order_status(注文ステータス)           :integer          default(0), unsigned, not null
#  total_price(合計金額)                     :bigint           unsigned, not null
#  created_at                                :datetime         not null
#  updated_at                                :datetime         not null
#  menu_id(メニューID)                       :bigint           unsigned, not null
#  restaurant_id(レストランID)               :bigint           unsigned, not null
#  restaurant_tabel_id(レストランテーブルID) :bigint           unsigned, not null
#  user_id(注文ユーザーID)                   :bigint           unsigned, not null
#
# Indexes
#
#  index_orders_on_menu_id              (menu_id)
#  index_orders_on_restaurant_id        (restaurant_id)
#  index_orders_on_restaurant_tabel_id  (restaurant_tabel_id)
#  index_orders_on_user_id              (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (menu_id => menus.id)
#  fk_rails_...  (restaurant_id => restaurants.id)
#  fk_rails_...  (restaurant_tabel_id => restaurant_tabels.id)
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
end
