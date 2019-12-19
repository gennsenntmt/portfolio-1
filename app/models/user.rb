class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:name]

  has_many :reports
  has_many :users_students
  has_many :students, through: :users_students

  validates :name, uniqueness: true, presence: true, length: { maximum: 10 }
  validates :password, presence: true, length: { in: 6..30 }
  
  # No use email
  def email_required?
   false
  end
 
  def email_changed?
   false
  end

 def will_save_change_to_email?
  false
 end
end

