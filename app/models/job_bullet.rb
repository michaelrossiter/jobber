class JobBullet < ActiveRecord::Base
  belongs_to :job
  belongs_to :bullet 
end
