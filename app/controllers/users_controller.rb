class UsersController < ApplicationController
  def create
    user = User.new(params[:user].permit(:name, :email))
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    user = User.find(params[:id])

    user.destroy

    render json: user
  end

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])

    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(params[:user].permit(:name, :email))

    render json: user
  end
end
