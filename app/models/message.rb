class Message < ApplicationRecord
	validates :name, :address, :email, :message, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :message, length: {maximum: 500, minimum: 10}
end
