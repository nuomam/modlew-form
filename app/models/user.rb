class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address , presence: true
  validates :postal_code, presence: true, format: { with: /(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}/ }
  validates :city, presence: true
  validates :policy_agreement, presence: true
  validates :phone_number, presence: true
  # validates :construction_type, inclusion: { in: ["Repeindre un meuble de cuisine", "Repeindre un escalier", "Repeindre un carrelage de salle de bain"] }
  has_attachment :photo
end
