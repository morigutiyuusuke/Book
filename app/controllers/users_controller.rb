class UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update]
  
  def show
    
  end

  def index
  end

  def edit
  end
  
  def update
  end
  
  def user_params
     params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
