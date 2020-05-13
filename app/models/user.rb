class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_one_attached :image
  
  belongs_to :group
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         
  def full_profiel?
    image.attached? && nickname? && introduce?
  end
end