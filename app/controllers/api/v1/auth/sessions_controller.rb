class Api::V1::Auth::SessionsController < DeviseTokenAuth::SessionsController
  def index
    if current_api_v1_user
      render json: { is_login: true, data: current_api_v1_user }
    else
      render json: { is_login: false, message: "ユーザーが存在しません" }
    end
  end

  def create
    super do
      # 認証成功時のカスタムレスポンス
      render json: { user: current_user, token: @token }.to_json and return
    end
    # render json: { success: false, status: 401, error: "ユーザーが存在しません" }
    # render json: { success: false, status: 401, error: "ユーザーが存在しません" }, status: :unauthorized
  end

  def test
    if current_api_v1_user
      render json: { is_login: true, data: current_api_v1_user }
    else
      render json: { is_login: false, message: "ユーザーが存在しません" }
    end
  end
end
