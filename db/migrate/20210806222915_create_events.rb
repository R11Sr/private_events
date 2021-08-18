class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :location, null: false
      t.date :date, null: false

      t.references :creator,null: false, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
