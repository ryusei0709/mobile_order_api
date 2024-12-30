# == Schema Information
#
# Table name: menu_categories
#
#  id                          :bigint           unsigned, not null, primary key
#  name(カテゴリー名)          :string(255)      not null
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  restaurant_id(レストランID) :bigint           unsigned, not null
#
# Indexes
#
#  index_menu_categories_on_restaurant_id  (restaurant_id)
#
# Foreign Keys
#
#  fk_rails_...  (restaurant_id => restaurants.id)
#
class MenuCategory < ApplicationRecord
end
