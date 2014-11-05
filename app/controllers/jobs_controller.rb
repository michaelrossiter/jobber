class JobsController < ApplicationController


  def index
    @jobs = Job.all
    render json: @jobs
  end

  def show
      @job = Job.find(params[:id])
      render json: @job
    end


  def create
    @job = Job.create(job_params)
  end

  def update
    respond_with Job.update(params[:id], params[:job])
  end

  def destroy
    respond_with Job.destroy(params[:id])
  end

  private
     # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:name)
    end

end