class List < ApplicationRecord
  belongs_to :board, optional: true
  has_many :cards, dependent: :destroy
  validates :priority, presence: true
  validates :title, presence: true
end
