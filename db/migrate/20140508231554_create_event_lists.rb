class CreateEventLists < ActiveRecord::Migration
  def change
    create_table :event_lists do |t|
      t.string :uid

      t.timestamps
    end
  end
end
