class Api::V1::UsersController < ApplicationController
  before_action :authenticate_api_v1_user!

  def index
    users = User.order(created_at: :desc)
    render json: { status: 200, message: 'Loaded users', data: users }
  end

end
