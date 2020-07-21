class Reservation < ApplicationRecord
  belongs_to :castle
  belongs_to :user
end
