class Account < ApplicationRecord
    has_many :orders
    
    validates_associated :orders
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phone_number, presence: true, uniqueness: true


end
