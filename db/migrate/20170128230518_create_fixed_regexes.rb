class CreateFixedRegexes < ActiveRecord::Migration[5.0]
  def change
    create_table :fixed_regexes do |t|
      t.string :type, null: false, default: "input"
      t.string :ascii
      t.string :tex
      t.string :html
      t.string :kasha
      t.integer :number, null: false

      t.timestamps
    end
  end
end
