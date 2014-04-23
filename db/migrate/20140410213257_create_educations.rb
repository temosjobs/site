class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :institution
      t.integer :start_year
      t.integer :end_year
      t.string :formation
      t.string :course
      t.text :description
      t.references :resume, index: true

      t.timestamps
    end
  end
end
