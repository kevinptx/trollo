class AddListToBoards < ActiveRecord::Migration[5.2]
  def change
    add_reference :boards, :list, foreign_key: true
  end
end
