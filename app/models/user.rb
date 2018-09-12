class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_one :student
  has_one :teacher
  accepts_nested_attributes_for :student

  def full_name
    first_name + ' ' + last_name
  end
end
