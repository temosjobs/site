class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :gender
      t.date :birth
      t.string :mobile_phone
      t.string :home_phone
      t.string :website
      t.string :street
      t.integer :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :linkedin_url
      t.string :github_url
      t.string :facebook_id
      t.string :google_id
      t.boolean :is_newsletter
      t.boolean :is_terms
      t.references :user, index: true

      t.timestamps
    end
  end
end
