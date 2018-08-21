class Student < ApplicationRecord
  belongs_to :user
  has_one :application
  validates :user, presence: true, uniqueness: true
  has_many :appointments
end
