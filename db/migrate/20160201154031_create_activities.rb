class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :task_id
      t.string :duration
      t.datetime :date
      t.text :description
      t.timestamps null: false
    end
  end
end
