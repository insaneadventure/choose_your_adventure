class UserMigration < ActiveRecord::Migration
  def up
    drop_table :users if table_exists?(:users)
    create_table :users do |t|

      t.string :name
      t.timestamps :login_time
      t.timestamps :current_step
      t.timestamps :created_at
      t.timestamps :updated_at
    end

  end


  def down
    drop_table :users if table_exists?(:users)
  end
end
