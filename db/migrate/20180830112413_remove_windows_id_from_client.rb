class RemoveWindowsIdFromClient < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :windowsId, :integer
  end
end
