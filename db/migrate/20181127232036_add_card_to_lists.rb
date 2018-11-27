class AddCardToLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :card, foreign_key: true
  end
end
