class Castle < ApplicationRecord
  belongs_to :user
  has_many :reservation
  has_many :castle
end