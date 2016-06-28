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
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  @user = User.find(params[:id])
   if current_user != @user
      redirect_to:root
   end
  end


  def update
   @user = User.find(params[:id])
    if current_user != @user
       redirect_to:root
    end
    if @user.update(user_params)
      flash[:success] = "更新"
      redirect_to @user
    end
  end  
  

  private

  def user_params
    params.require(:user).permit(:email, :password,
                                 :password_confirmation)
  end
end
