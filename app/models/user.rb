class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :book, dependent: :destroy
         validates :name, uniqueness: true, length: { minmun: 2, maximum: 20 }
         validates :introduction, length: { maximum: 50}
end