class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :user_id, presencs: true
end
