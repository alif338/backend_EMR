class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def not_found
    render json: { error: "Not found" }, status: 404
  end
end