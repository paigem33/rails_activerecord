class Account < ApplicationRecord
    has_many :addresses
    
    validates_associated :addresses
    validates :username, length: { minimum: 5 }, uniqueness: true
    validates :password, length: { minimum: 6 }, uniqueness: true

validate :password_complexity, on: :create

  def password_complexity
    if password.present? and not password.match(/^(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/)
      errors.add :password, "must include at least one number and one special character"
    end
  end

end
