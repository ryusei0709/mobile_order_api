class Tweet < ApplicationRecord
  # presenceはnilや空文字を許容しない
  validates :content, presence: true
  validates :content, length: { maximum: 140 }
end
