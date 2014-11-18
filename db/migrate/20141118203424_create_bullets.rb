class CreateBullets < ActiveRecord::Migration
  def change
    create_table :bullets do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
