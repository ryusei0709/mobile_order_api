class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  # def create
  #   user = User.new(sign_up_params)

  #   user.save
  #   pp user
  # end
  private

  def sign_up_params
    params.permit(:email, :password, :password_confirmation, :name)
  end
end
