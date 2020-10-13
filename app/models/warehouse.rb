class Warehouse < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  validates :location, presence: true
end
