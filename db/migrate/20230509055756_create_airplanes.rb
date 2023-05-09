class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.integer :flight_id
      t.text :column
      t.text :rows

      t.timestamps
    end
  end
end
