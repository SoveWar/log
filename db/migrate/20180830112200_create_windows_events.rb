class CreateWindowsEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :windows_events do |t|
      t.integer :event_id
      t.integer :client_id
      t.date :time
      t.string :samaccountname

      t.timestamps
    end
  end
end
