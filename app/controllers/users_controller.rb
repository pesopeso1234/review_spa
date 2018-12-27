class UsersController < ApplicationController

  before_action :authenticate_user!, except: [:edit_complete, :withdraw_confirm, :withdraw_complete, :sign_up_complete]


  def show
    if current_user.id == params[:id].to_i
      @reviews = Review.where(user_id: current_user.id).order(bathing_date: :desc).page(params[:page]).per(3)
    else
      redirect_to root_path and return
    end
  end

  def edit
  end

  def update
  end

  def edit_complete
  end

  def withdraw_confirm
  end

  def destroy
  end

  def withdraw_complete
  end

  def sign_up_complete
  end
end
