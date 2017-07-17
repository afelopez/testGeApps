class Path < ApplicationRecord
  belongs_to :vehicle
  belongs_to :passenger
end
