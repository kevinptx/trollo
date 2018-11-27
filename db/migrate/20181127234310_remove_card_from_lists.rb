class RemoveCardFromLists < ActiveRecord::Migration[5.2]
  def change
    remove_reference :lists, :card, foreign_key: true
  end
end
