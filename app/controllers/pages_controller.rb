class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    today_user_dimensions = UserDimension.where(user: current_user, created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)

    # if today_user_dimensions.empty?
    #   ...
    # else
    #   @user_dimensions = today_user_dimensions
    # end
  end
end
