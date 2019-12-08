class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :user_id, presencs: true
  validates :tweet_id, presencs: true
  validates_uniqueness_of :tweet_id, scope: :user_id
end
