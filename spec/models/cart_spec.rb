# == Schema Information
#
# Table name: carts
#
#  id                  :bigint           unsigned, not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id(ユーザーID) :bigint           unsigned, not null
#
# Indexes
#
#  index_carts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Cart, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
