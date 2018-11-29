class Board < ApplicationRecord
  belongs_to :user, optional: true
  has_many :lists
  validates :name, presence: {message: "Must include a name for your board."}
end
