class RemoveCompletedFromUserDImensions < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_dimensions, :completed
  end
end
