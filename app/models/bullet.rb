class Bullet < ActiveRecord::Base
  has_many :job_bullets
  has_many :jobs, through: :job_bullets 
end
