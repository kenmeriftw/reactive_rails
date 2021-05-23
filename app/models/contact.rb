class Contact < ApplicationRecord
  scope :sorted, -> { order(:name) }

  vaildates :name, :email, presence: true
  validates :email, format: { URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
