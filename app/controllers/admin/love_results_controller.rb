module Admin
  class LoveResultsController < ApplicationController
    before_action :authenticate_admin!

    def index
      render json: LoveResult.order(created_at: :desc)
    end

    private

    def authenticate_admin!
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV["ADMIN_USERNAME"] &&
        password == ENV["ADMIN_PASSWORD"]
      end
    end
  end
end