class Retail < ActiveRecord::Base
  has_many :transaction
  has_many :menu
  has_many :news
  has_many :reward_pan
end