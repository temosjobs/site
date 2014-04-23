class AddIsPublicLinkPublicLinkToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :is_public_link, :boolean
    add_column :resumes, :public_link, :string
  end
end
