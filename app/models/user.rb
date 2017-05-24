class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :store
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true, uniqueness: false
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address , presence: true
  validates :postal_code, presence: true, format: { with: /(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}/ }
  validates :city, presence: true
  validates :policy_agreement, presence: true
  validates :phone_number, presence: true
  # validates :construction_type, inclusion: { in: ["Repeindre un meuble de cuisine", "Repeindre un escalier", "Repeindre un carrelage de salle de bain"] }
  has_attachment :photo

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
