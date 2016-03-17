class UserPagesController < ApplicationController
  def index
  end

  def new
    @user = current_user
  end

  def create
  end

  def edit
  end

  def update
    @user = User.find(current_user.id)
      if @user.update(user_params)
        flash[:success] = "Profile successfully updated!!"
        redirect_to '/'
      else
        render 'edit'
      end
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:fullname,:address,:pincode,:city,:state,:country,:gender)
  end
end
