class Profile < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, 
           :confirmable,
           :omniauthable,
           :registerable,
           :recoverable, 
           :rememberable, 
           :trackable, 
           :validatable
    has_and_belongs_to_many :tags
    has_and_belongs_to_many :teams
end
