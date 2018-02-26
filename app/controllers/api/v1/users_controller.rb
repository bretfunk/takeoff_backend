class Api::V1::UsersController < ApplicationController
  def show
    address = params[:address]
    if User.find_by(address: address)
    render json: address, status: 200
    else
    render json: "not found", status: 200
    end
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
