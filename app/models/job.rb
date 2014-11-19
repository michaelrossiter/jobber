class Job < ActiveRecord::Base
  validates :name, presence: true
  has_many :job_bullets
  has_many :bullets, through: :job_bullets 
  has_many :resume_jobs
  has_many :resumes, through: :resume_jobs 
end
