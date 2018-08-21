class Application < ApplicationRecord
  belongs_to :student
  validates :student, presence: true
  validates :learning_goals, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :gender, presence: true
end
