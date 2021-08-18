class CreateEventMangers < ActiveRecord::Migration[6.1]
  def change
    create_table :event_mangers do |t|

      t.references :event, null: false, foreign_key: { to_table: :events}
      t.references :attendee,null: false, foreign_key: { to_table: :users}
      t.timestamps
    end
  end
end
