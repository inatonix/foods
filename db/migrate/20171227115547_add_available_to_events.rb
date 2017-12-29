class AddAvailableToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :availavle, :boolean
  end
end
