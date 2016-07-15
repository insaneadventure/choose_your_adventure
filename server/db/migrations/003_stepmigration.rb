class Stepmigration < ActiveRecord::Migration
  def up
    drop_table :steps if table_exists?(:steps)
    create_table :steps do |t|
    t.string :name
    t.string :text
    t.string :option_a_text
    t.integer :option_a_step_id
    t.string :option_b_text
    t.integer :option_b_step_id
    t.integer :adventure_id
    t.timestamps :created_at, null: true
    t.timestamps :updated_at, null: true
    end
  end

  def down
    drop_table :steps if table_exists?(:steps)
  end
end
