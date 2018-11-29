class Board < ApplicationRecord
  belongs_to :user, optional: true
  has_many :lists, dependent: :destroy
  validates :name, presence: true
end
