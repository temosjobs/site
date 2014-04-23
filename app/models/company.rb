class Company < ActiveRecord::Base
  belongs_to :user

  has_attached_file :logo, :styles => { :medium => "128x128>", :thumb => "100x100>" }
  do_not_validate_attachment_file_type :logo
end
