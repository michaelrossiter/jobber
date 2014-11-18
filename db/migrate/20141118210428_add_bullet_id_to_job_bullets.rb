class AddBulletIdToJobBullets < ActiveRecord::Migration
  def change
    add_column :job_bullets, :bullet_id, :integer
  end
end
