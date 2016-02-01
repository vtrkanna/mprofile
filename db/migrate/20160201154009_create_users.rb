class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      #t.string :email, null: false, default: ""
      #t.string :password, null: false, default: ""
      t.string :role, default: "Default"
      t.string :user_type, default: "Employee"
      t.boolean :active, default: false
      t.timestamps null: false
    end
    #add_index :users, :email, unique: true
    add_index :users, :name
  end
end
