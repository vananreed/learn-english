class Question < ApplicationRecord
  belongs_to :teacher
  validates :email, presence: true
  validates :content, presence: true
end
