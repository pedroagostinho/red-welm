class Dimension < ApplicationRecord
  has_many :user_dimensions
  has_many :users, through: :user_dimensions

  validates :name, presence: true

  STANDARD_DIMENSIONS = ["read", "exercise", "disconnect", "work", "enjoy", "love", "meditate"]
  STANDARD_EMOJIS = ["📖", "🏋️", "📴", "💼", "👯", "❤️", "🧘"]

  # def select_standard_dimensions
  #   user_dimensions = Dimension.where(user_email: current_user.email)

  #   user_dimensions.empty? ? user_dimensions = Dimension.where("column = ?", nil) : user_dimensions
  # end
end
