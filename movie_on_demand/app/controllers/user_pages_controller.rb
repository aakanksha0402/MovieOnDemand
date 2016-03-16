class UserPagesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  def edit_user_details
    @user = current_user
  end

  def update_user_details
    @user = User.find(current_user.id)
      if @user.update(user_params)
        flash[:success] = "Profile successfully updated!!"
        redirect_to '/'
      else
        render 'edit_user_details'
      end
  end


  private

  def user_params
    params.require(:user).permit(:fullname,:address,:pincode,:city,:state,:country,:gender)
  end
end
