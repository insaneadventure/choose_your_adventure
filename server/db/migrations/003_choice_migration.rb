class ChoiceMigration < ActiveRecord::Migration
  def up
    drop_table :choices if table_exists?(:choices)
    create_table :choices do |t|
      #t.string :name
      t.integer :last_piece_id
      t.string :text
      t.boolean :start
      t.boolean :end
      t.timestamps :created_at, null: true
      t.timestamps :updated_at, null: true
    end
  end

  def down
    drop_table :choices if table_exists?(:choices)
  end
end
