class UsersController < ApplicationController
  def show # 追加
   @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user # ここを修正
    else
      render 'new'
    end
  end
 
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
 before_action :correct_user, only: [:edit, :update]
 
 def edit
 
 end
 
 def update
 
 end
 
 
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile, :region)
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to root_path if @user != current_user
  end
end