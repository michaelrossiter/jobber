class Job < ActiveRecord::Base
  validates :name, presence: true
  has_many :job_bullets
  has_many :bullets, through: :job_bullets 
end
