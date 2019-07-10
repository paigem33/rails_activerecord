class Order < ApplicationRecord
    belongs_to :account
    
    validates :product, presence: true
    validates :quantity, presence: true
    validates :account_id, presence: true
    # shipdate
    
end
