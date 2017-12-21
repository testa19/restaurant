class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :customer
      t.text :info
      t.references :restaurant, foreign_key: true
      t.references :table, foreign_key: true

      t.timestamps
    end
  end
end
