class AddShowInSearchToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :show_in_search, :boolean
  end
end
