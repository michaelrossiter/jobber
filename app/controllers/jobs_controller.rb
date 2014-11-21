class JobsController < ApplicationController

  def index
    @jobs = Job.all
    render json: @jobs
  end

  def show
      @job = Job.find(params[:id])
      render json: @job, serializer: JobSerializer
    end

  def create
    @job = Job.create(job_params)

  end

  def edit
    @job = Job.update(job_params)
    render :json => true
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes(job_params)
    render :json => true
  end

  def destroy
    Job.destroy(params[:id])
    render :json=>true
  end

  private
     # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:name,:id, :created_at, :updated_at)
    end

end