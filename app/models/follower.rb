class Follower < ActiveRecord::Base
  attr_accessible :name, :twitter_account_id
  belongs_to :twitter_account

  validates :twitter_account_id, presence: true
  validates :name,  presence: true;
end
