class BulletsController < ApplicationController

  def create
    @job = Job.create(bullet_params)
  end

  def new
    @job = Job.create(bullet_params)
  end

	private

  def bullet_params
  	params.require(:bullet).permit(:content)

end