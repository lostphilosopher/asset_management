class Organization < ApplicationRecord
  has_many :users
  has_many :assets
end
