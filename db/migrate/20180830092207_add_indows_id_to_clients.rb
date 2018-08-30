class AddIndowsIdToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :windowsId, :integer
  end
end
