class RemoveDescriptionFromLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :description, :string
  end
end
