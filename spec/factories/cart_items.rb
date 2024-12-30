# == Schema Information
#
# Table name: cart_items
#
#  id                      :bigint           unsigned, not null, primary key
#  quantity(個数)          :bigint           unsigned, not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  cart_id(注文ユーザーID) :bigint           unsigned, not null
#  menu_id(メニューID)     :bigint           unsigned, not null
#
# Indexes
#
#  index_cart_items_on_cart_id  (cart_id)
#  index_cart_items_on_menu_id  (menu_id)
#
# Foreign Keys
#
#  fk_rails_...  (cart_id => carts.id)
#  fk_rails_...  (menu_id => menus.id)
#
FactoryBot.define do
  factory :cart_item do
    
  end
end
