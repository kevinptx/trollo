class Board < ApplicationRecord
  belongs_to :user
  has_many :lists
  validates :name, presence: {message: "Must include a name for your board."}
end
