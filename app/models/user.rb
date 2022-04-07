class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :menus
         has_many :orders, dependent: :destroy
         

         #mailer
         after_create :welcome

         def welcome
          UserMailer.welcome(self).deliver
          
         end


end
