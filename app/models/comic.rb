class Comic < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :publisher, presence: true
  validates :year_published, presence: true, numericality: true
  validates :condition, presence: true
end
