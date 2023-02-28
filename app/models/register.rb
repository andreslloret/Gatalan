class Register < ApplicationRecord
  belongs_to :user
  validates :name, :email, :phone, :tour, :date, presence: true
end
