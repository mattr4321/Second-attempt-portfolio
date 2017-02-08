class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :orders
end

def self.search(search)
     if search
       find(:all, :conditions => ['name ILIKE ?', "%#{search}%"])
     else
       find(:all)
     end
end