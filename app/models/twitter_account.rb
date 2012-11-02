class TwitterAccount < ActiveRecord::Base
  attr_accessible :name, :password
  belongs_to :user

  validates :user_id, presence: true
  validates :name,  presence: true;
  validates :password, presence: true;
end