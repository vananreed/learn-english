class Appointment < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  validates :teacher, presence: true
  validates :student, presence: true
  validates :time, presence: true
  validates :date, presence: true
  validates :duration, presence: true
  validates :location, presence: true

end
