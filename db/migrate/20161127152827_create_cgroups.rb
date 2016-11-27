class CreateCgroups < ActiveRecord::Migration[5.0]
  def change
    create_table :cgroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
