class UsersController < ApplicationController
  def index
    # Lists all games by cost.
    @games = Game.order(:cost).includes([:image_attachment, :user]).page(params[:page])
  end

  def show
    if user_signed_in?
      @user = User.where(username: params[:username])[0]
    else
      @user = User.find(params[:id])
    end
  end
end
