class UsersController < ApplicationController

  def index
    @users = User.order(:id).all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      cookie[:user_name] = 'testing'
      redirect_to [:root], notice: 'User created!'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password
    )
  end




end
