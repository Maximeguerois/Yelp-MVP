class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
  validates :address, presence: true
  validates :name, presence: true
end
