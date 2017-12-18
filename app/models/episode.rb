class Episode < ApplicationRecord
  validates :number, numericality: true
end
