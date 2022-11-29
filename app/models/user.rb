class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :roles, dependent: :destroy

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:admin, :user, :imam]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    seroles||= :user
  end
end

