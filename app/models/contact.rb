class Contact < ApplicationRecord

  validates :email, presence: true, length: {minimum: 5, maximum: 140}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :subject, presence: true, length: {minimum: 2, maximum: 140}
  validates :message, presence: true, length: {minimum: 5, maximum: 2000}

end
