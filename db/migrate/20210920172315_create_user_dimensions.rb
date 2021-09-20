class CreateUserDimensions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_dimensions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dimension, null: false, foreign_key: true
      t.string :completed
      t.float :value

      t.timestamps
    end
  end
end
