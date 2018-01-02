class RemoveAvailableFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :available, :boolean
  end
end
