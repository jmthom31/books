class Book < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :author, presence: true
  validates :complete, presence: true
end
