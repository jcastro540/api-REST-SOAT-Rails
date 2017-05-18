class UsersController < ApplicationController
  
  def index
    @users = User.all
    render json: @users
  end


  def create

    @user = User.new(user_params)
    if @user.save
      render json: @user
    end

  end

  def show
    @user = User.find params[:id]
    render json: @user
  end


  def update
    @user = User.find params[:id]
    if @user.update_attributes(params[:user])
      render json: @user
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
  end


  private

    def user_params
     params.permit(:email, :nombre,:apellido,:password_digest,:full_name,:description,:telefono,:role)
    end
  
end
