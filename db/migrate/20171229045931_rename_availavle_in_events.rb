class RenameAvailavleInEvents < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :availavle, :available
  end
end
