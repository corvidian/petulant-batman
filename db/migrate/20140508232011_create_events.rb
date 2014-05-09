class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :start
      t.integer :length
      t.string :name
      t.string :place
      t.string :description
      t.integer :event_list_id

      t.timestamps
    end
  end
end
