class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :street
      t.integer :house_number
      t.integer :zip_code
      t.string :city
      t.integer :living_space
      t.string :plot_area
      t.integer :number_of_rooms
      t.integer :construction_year
      t.text :description

      t.timestamps
    end
  end
end
