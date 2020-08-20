class Loan < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :car, optional: true
     accepts_nested_attributes_for :car
     validates :category, presence: true
     validates :amount, presence: true

    
end
