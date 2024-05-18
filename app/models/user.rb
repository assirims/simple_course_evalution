class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  extend FriendlyId
  friendly_id :generate_random_number, use: :slugged

  has_person_name

  has_many :reviews, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, on: :create
  validates :password_confirmation, presence: true, on: :create
  validates :email, presence: true, uniqueness: true

  private

  def generate_random_number
    rand(10 ** 9..10 ** 10 - 1).to_s
  end
end
