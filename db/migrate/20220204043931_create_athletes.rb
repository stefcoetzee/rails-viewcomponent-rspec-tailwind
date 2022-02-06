class CreateAthletes < ActiveRecord::Migration[7.0]
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :jersey_number

      t.timestamps
    end
  end
end
