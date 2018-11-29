class AddPriorityToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :priority, :integer
  end
end
