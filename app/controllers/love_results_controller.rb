class LoveResultsController < ApplicationController
  def create
    love_result = LoveResult.new(love_result_params)

    if love_result.save
      render json: love_result, status: :created
    else
      render json: { errors: love_result.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def love_result_params
    params.require(:love_result).permit(:first_name, :second_name, :percentage)
  end
end