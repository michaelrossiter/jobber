class CreateResumeJobs < ActiveRecord::Migration
  def change
    create_table :resume_jobs do |t|
      t.integer :resume_id
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
