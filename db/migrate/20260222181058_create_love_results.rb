class CreateLoveResults < ActiveRecord::Migration[8.1]
  def change
    create_table :love_results do |t|
      t.string :first_name
      t.string :second_name
      t.integer :percentage

      t.timestamps
    end
  end
end
