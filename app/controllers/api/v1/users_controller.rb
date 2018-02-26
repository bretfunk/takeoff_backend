class Api::V1::UsersController < ApplicationController
  def show
    address = params[:address]
    @user = User.find_or_create_by(address: address)
    render json: @user.contracts, status: 200
  end

  def new
    @user = user.find_or_createby(address: params[:address])
    render json: @user.contracts.create(
      owner: params[:owner],
      description: params[:description],
      moneyGoal: params[:moneyGoal],
      timeGoal: params[:timeGoal],
      balance: params[:balance],
      start: params[:start]
    ), status: 204
  end

  def test
    render json: "test"
  end
end
