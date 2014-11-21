class AddApplicationIdToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :application_id, :string
  end
end
