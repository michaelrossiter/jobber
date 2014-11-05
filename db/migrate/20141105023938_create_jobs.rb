class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name

      t.timestamps null: false
    end

    add_index :jobs, :name, unique: true
  end
end
