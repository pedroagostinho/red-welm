class CreateDimensions < ActiveRecord::Migration[6.0]
  def change
    create_table :dimensions do |t|
      t.string :name
      t.string :emoji
      t.text :description

      t.timestamps
    end
  end
end
