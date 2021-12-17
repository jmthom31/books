class Book < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :author, presence: true
end
