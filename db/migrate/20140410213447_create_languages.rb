class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :level
      t.references :resume, index: true

      t.timestamps
    end
  end
end