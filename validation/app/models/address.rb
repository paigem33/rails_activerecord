class Address < ApplicationRecord
    belongs_to :account
    
    validates :street_number, numericality: { only_integer: true }, presence: true, uniqueness: { scope: :account_id }
    validates :street_name, presence: true, uniqueness: { scope: :account_id }
    validates :city, presence: true
    validates :state, presence: true
    validates :zip, numericality: { only_integer: true }, presence: true, uniqueness: { scope: :account_id }
    
    
end
