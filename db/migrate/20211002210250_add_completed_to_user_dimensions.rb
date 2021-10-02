class AddCompletedToUserDimensions < ActiveRecord::Migration[6.0]
  def change
    add_column :user_dimensions, :completed, :boolean, default: false
  end
end
