class Adventuremigration < ActiveRecord::Migration
  def up
    drop_table :adventures if table_exists?(:adventures)
    create_table :adventures do |t|
    t.string :name
    t.timestamps :created_at, null: true
    t.timestamps :updated_at, null: true
    end
  end

  def down
    drop_table :adventures if table_exists?(:adventures)
  end
end
