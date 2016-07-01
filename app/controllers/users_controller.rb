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
    params.require(:user).permit(:contact_email, :jp_market_place_id, :jp_markchant_id, :jp_access_key_id, :jp_secret_key, :com_market_place_id,
                                 :com_markchant_id, :com_access_key_id, :com_secret_key)



  end
end
