class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.references :resume, index: true

      t.timestamps
    end
  end
end
