class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :category, :string
    add_column :events, :organizer, :string
    add_column :events, :organizer_url, :string
  end
end
