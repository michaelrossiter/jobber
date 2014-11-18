class AddJobIdToJobbullets < ActiveRecord::Migration
  def change
    add_column :job_bullets, :job_id, :integer
  end
end
