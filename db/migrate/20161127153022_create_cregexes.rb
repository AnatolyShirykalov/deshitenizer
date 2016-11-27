class CreateCregexes < ActiveRecord::Migration[5.0]
  def change
    create_table :cregexes do |t|
      t.string :ruby_pattern
      t.string :js_pattern
      t.string :ruby_replacement
      t.string :js_replacement
      t.string :comment
      t.string :name
      t.string :shortname
      t.integer :cgroup_id

      t.foreign_key :cgroups

      t.timestamps
    end
  end
end
