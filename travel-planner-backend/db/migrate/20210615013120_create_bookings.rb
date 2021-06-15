class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :status
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end