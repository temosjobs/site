class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :title
      t.string :location
      t.date :start_date
      t.date :end_date
      t.text :description
      t.boolean :is_current_job
      t.references :resume, index: true

      t.timestamps
    end
  end
end
