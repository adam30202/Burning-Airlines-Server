class User < ApplicationRecord
    has_many :reservations
    has_many :flights, :through => :reservations 
    enum role: [:user, :admin]
      
    def admin?
        role == "admin"
    end
      
end
