class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_one_attached :profile_image
         has_many :books, dependent: :destroy
         attachment :profile_image
         validates :name, uniqueness: true, length: { minmun: 2, maximum: 20 }
         validates :introduction, length: { maximum: 50}
end
