class JobsController < ApplicationController
  respond_to :json

  def index
    respond_with Job.all
  end

  def show
    respond_with Job.find(params[:id])
  end

  def create
    respond_with Job.create(params[:entry])
  end

  def update
    respond_with Job.update(params[:id], params[:entry])
  end

  def destroy
    respond_with Job.destroy(params[:id])
  end
end