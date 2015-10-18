class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :video
      t.string :video_file_name
      t.text :video_meta
      t.string :video_file_size

      t.timestamps null: false
    end
  end
end
