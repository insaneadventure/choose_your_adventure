class UserMigration < ActiveRecord::Migration
  def up
    drop_table :users if table_exists?(:users)
    create_table :users do |t|
    t.string :name
    t.string :text
    t.string :option_a_text
    t.integer :option_a_step_id
    t.string :option_b_text
    t.integer :option_b_step_id
    t.integer :adventure_id
    t.timestamps :created_at
    t.timestamps :updated_at
    end
  end

  def down
    drop_table :users if table_exists?(:users)
  end
end
