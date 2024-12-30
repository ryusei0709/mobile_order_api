# == Schema Information
#
# Table name: restaurants
#
#  id                     :bigint           unsigned, not null, primary key
#  name(店名)             :string(255)      not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  corporation_id(法人ID) :bigint           unsigned, not null
#
# Indexes
#
#  index_restaurants_on_corporation_id  (corporation_id)
#
# Foreign Keys
#
#  fk_rails_...  (corporation_id => corporations.id)
#
require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
