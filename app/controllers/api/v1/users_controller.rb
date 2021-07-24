class Api::V1::UsersController < ApplicationController
  def index
    users = User.order(created_at: :desc)
    render json: { status: 200, message: 'Loaded users', data: users }
  end

end
