class Resume < ActiveRecord::Base
  belongs_to :application
  has_many :resume_jobs
  has_many :jobs, through: :resume_jobs 
end
