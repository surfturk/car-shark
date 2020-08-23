class Car < ApplicationRecord
    has_many :loans
    has_many :users, through: :loans, dependent: :destroy
    validates :customer_name, presence: { :message => "can't be blank!"}
    validates :model, presence: { :message => "can't be blank!"}
    validates :year, presence: { :message => "can't be blank!"}


    scope :colorado, -> {self.where(model: "Colorado")}
    scope :tahoe, -> {self.where(model: "Tahoe")}
    scope :traverse, -> {self.where(model: "Traverse")}
end
