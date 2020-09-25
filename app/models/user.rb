class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  with_options presense: true do
     validates :nickname,        
     validates :email,           
     validates :password,        length: { minimum: 6 }
     validates :last_name,       
     validates :first_name,      
     validates :last_name_kana,  
     validates :first_name_kana, 
     validates :birthday_date,   
  end
end
