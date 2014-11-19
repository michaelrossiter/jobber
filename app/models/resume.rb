class Resume < ActiveRecord::Base
  has_many :resume_jobs
  has_many :jobs, through: :resume_jobs 
end
