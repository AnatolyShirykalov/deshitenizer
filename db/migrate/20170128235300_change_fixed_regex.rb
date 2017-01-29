class ChangeFixedRegex < ActiveRecord::Migration[5.0]
  def up
    change_column :fixed_regexes, :type, :string, null: false, default: "tokasha"
    rename_column :fixed_regexes, :type, :direction
  end
  def down
    rename_column :fixed_regexes, :direction, :type
    change_column :fixed_regexes, :type, :string, null: false, default: "input"
  end
end

