class TvShow < ApplicationRecord
  validates :name, presence: true
  validates :complete, presence: true
end
