class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.integer :seats
      t.string :description
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
