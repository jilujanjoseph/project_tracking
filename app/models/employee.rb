class Employee < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :email_id, using: :email
end
