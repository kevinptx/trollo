class Card < ApplicationRecord
  belongs_to :list, optional: true
  validates :title, presence: true
  validates :priority, presence: true
end
