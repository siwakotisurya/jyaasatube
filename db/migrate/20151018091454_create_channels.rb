class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :channel_name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
