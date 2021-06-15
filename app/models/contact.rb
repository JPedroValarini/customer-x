class Contact < ApplicationRecord
  belongs_to :client

  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\Z/i
  validates :full_name, :email, :telephone, presence: true
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX

end
