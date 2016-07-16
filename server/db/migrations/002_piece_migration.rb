class PieceMigration < ActiveRecord::Migration
  def up
    drop_table :pieces if table_exists?(:pieces)
    create_table :pieces do |t|

      t.integer :storyboard_id
      t.string :text
      t.timestamps :created_at, null: true
      t.timestamps :updated_at, null: true
    end
  end

  def down
    drop_table :pieces if table_exists?(:pieces)
  end
end
