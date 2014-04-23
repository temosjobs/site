class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :section_work
      t.text :description
      t.string :city
      t.string :state
      t.string :neighborhood
      t.attachment :logo
      t.references :user, index: true

      t.timestamps
    end
  end
end
