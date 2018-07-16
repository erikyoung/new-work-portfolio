class Work < ApplicationRecord
	has_many :works
	validates :name, presence: true
	validates :address, presence: true
	validates :message, length: {maximum: 500}
	validates :message, length: {minimum: 10}
	validates :email, confirmation: { case_sensitive: true}
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :message, presence: true
end
