class AddStatusColumnToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :status, :string
  end
end
