class UsersController < ApplicationController
  before_action :authenticate_user!
  def index; end

  def show
    @user = User.find_by(id: params[:user_id].to_i)
    @current_user = current_user
  end
end
