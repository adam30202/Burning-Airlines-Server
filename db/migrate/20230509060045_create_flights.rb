class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :airplane_id
      t.text :to
      t.text :from
      t.text :date
      t.integer :seats

      t.timestamps
    end
  end
end
