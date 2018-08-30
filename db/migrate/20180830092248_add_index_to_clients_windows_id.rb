class AddIndexToClientsWindowsId < ActiveRecord::Migration[5.2]
  def change
  	add_index :clients, :windowsId, unique: true
  end
end
