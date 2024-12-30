# == Schema Information
#
# Table name: corporations
#
#  id         :bigint           unsigned, not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :corporation do
    name { "MyString" }
  end
end
