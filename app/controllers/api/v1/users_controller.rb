class Api::V1::UsersController < ApplicationController
  def show
    address = params[:address]
    @user = User.find_or_create_by(address: address)
    if @user
      render json: @user.contracts, status: 200
    else
      render json: "No Campaigns Found", status: 200
    end
  end

  def new
    @user = user.find_or_create_by(address: params[:address])
    render json: @user.contracts.create(
      owner: params[:owner],
      description: params[:description],
      moneyGoal: params[:moneyGoal],
      timeGoal: params[:timeGoal],
      balance: params[:balance],
      start: params[:start]
    ), status: 204
  end
end
