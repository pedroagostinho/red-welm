class DimensionsController < ApplicationController
  def index
    @dimensions = current_user.dimensions
  end

  def add_dimension
    dimension = params[:dimension]

    search_dimension = Dimension.find_by name: dimension[:name].downcase

    if search_dimension.nil?
      new_dimension = Dimension.new(
        name: dimension[:name].downcase,
        emoji: dimension[:emoji],
        description: dimension[:description]
      )
      new_dimension.save
    else
      new_dimension = search_dimension
    end

    if UserDimension.find_by(dimension_id: new_dimension.id).nil?
      new_user_dimension = UserDimension.new(
        user_id: current_user.id,
        dimension_id: new_dimension.id
      )
      new_user_dimension.save
    end

    redirect_to dimensions_path
  end
end
