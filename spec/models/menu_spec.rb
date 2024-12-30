# == Schema Information
#
# Table name: menus
#
#  id                                     :bigint           unsigned, not null, primary key
#  description(メニュー説明)              :string(255)      not null
#  price(値段)                            :bigint           unsigned, not null
#  title(メニュータイトル)                :string(255)      not null
#  created_at                             :datetime         not null
#  updated_at                             :datetime         not null
#  menu_category_id(メニューカテゴリーID) :bigint           unsigned, not null
#  restaurant_id(レストランID)            :bigint           unsigned, not null
#
# Indexes
#
#  index_menus_on_menu_category_id  (menu_category_id)
#  index_menus_on_restaurant_id     (restaurant_id)
#
# Foreign Keys
#
#  fk_rails_...  (menu_category_id => menu_categories.id)
#  fk_rails_...  (restaurant_id => restaurants.id)
#
require 'rails_helper'

RSpec.describe Menu, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
