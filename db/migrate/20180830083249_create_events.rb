class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :name
      t.integer :client_id

      t.timestamps
    end
  end
end
