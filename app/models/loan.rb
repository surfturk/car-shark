class Loan < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :car, optional: true
    validates_presence_of :car, {:message => "must have a customer name."}
    accepts_nested_attributes_for :car
    validates :category, presence: true
    validates :amount, presence: true


end
