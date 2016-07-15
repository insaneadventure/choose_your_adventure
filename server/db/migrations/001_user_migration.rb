class UserMigration < ActiveRecord::Migration
  def up
    drop_table :users if table_exists?(:users)
    create_table :users do |t|
      t.string :token
      t.string :name
      t.timestamps :login_time, null: true
      t.timestamps :current_step, null: true
      t.timestamps :created_at, null: true
      t.timestamps :updated_at, null: true
    end

  end


  def down
    drop_table :users if table_exists?(:users)
  end
end
