class AddSectionWorkAndTitleToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :section_work, :string
    add_column :resumes, :title, :string
  end
end
