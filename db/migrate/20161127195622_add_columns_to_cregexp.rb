class AddColumnsToCregexp < ActiveRecord::Migration[5.0]
  def change
    add_column :cregexes, :flags, :string
    add_column :cregexes, :sort, :integer
  end
end
