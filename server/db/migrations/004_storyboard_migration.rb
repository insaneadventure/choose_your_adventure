class StoryboardMigration < ActiveRecord::Migration
  def up
    drop_table :storyboards if table_exists?(:storyboards)
    create_table :storyboards do |t|
        t.string :name
        t.timestamps :created_at, null: true
        t.timestamps :updated_at, null: true
    end

  end


  def down
    drop_table :storyboards if table_exists?(:storyboards)
  end
end



#TOKEN: id ->, user_id -> fk, dest_piece_id -> fk, parent_piece_id -> fk
