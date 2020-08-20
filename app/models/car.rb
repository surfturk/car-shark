class Car < ApplicationRecord
    has_many :loans
    has_many :users, through: :loans, dependent: :destroy
    # validates :manufacturer
    validates :model, presence: { :message => "can't be blank!"}
    validates :year, presence: { :message => "can't be blank!"}

end
