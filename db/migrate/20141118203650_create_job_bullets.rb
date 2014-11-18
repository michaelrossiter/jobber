class CreateJobBullets < ActiveRecord::Migration
  def change
    create_table :job_bullets do |t|

      t.timestamps null: false
    end
  end
end
