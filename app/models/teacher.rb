class Teacher < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  has_many :appointments
end
