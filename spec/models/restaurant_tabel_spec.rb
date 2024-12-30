# == Schema Information
#
# Table name: restaurant_tabels
#
#  id                             :bigint           unsigned, not null, primary key
#  table_number(テーブルナンバー) :string(255)      not null
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  restaurant_id(レストランID)    :bigint           unsigned, not null
#
# Indexes
#
#  index_restaurant_tabels_on_restaurant_id  (restaurant_id)
#
# Foreign Keys
#
#  fk_rails_...  (restaurant_id => restaurants.id)
#
require 'rails_helper'

RSpec.describe RestaurantTabel, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
