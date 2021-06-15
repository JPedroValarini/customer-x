class Client < ApplicationRecord

  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\Z/i
  validates :full_name, :email, :telephone, :date_register, presence: true
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX

end
