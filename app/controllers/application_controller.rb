class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken

  skip_before_action :verify_authenticity_token
  helper_method :current_user, :user_signed_in?

  # current_api_v1_userが存在しなければnilを@curretn_userに代入する
  def current_user
      @current_user ||= current_api_v1_user.presence
  end
end
