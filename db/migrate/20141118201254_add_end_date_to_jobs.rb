class AddEndDateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :end_date, :datetime
  end
end
