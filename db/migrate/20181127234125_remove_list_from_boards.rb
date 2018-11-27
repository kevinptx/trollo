class RemoveListFromBoards < ActiveRecord::Migration[5.2]
  def change
    remove_reference :boards, :list, foreign_key: true
  end
end
