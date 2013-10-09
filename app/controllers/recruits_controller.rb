class RecruitsController < ApplicationController
  respond_to :json

  def index
    respond_with Recruit.all
  end

  def show
    respond_with Recruit.find(params[:id])
  end

  def create
    respond_with Recruit.create(params[:recruit])
  end

  def update
    respond_with Recruit.update(params[:id], params[:recruit])
  end

  def destroy
    respond_with Recruit.destroy(params[:id])
  end
end
