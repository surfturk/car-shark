class Loan < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :car, optional: true
     accepts_nested_attributes_for :car
     validates :category, presence: true
     validates :amount, presence: true

    def car_manufacturer=(manufacturer)
        car = Car.find_or_create_by(manufacturer: manufacturer)
        self.car = car
    end

    def car_manufacturer
       self.car ? self.car : nil
    end

    def car_model=(model)
        car = Car.find_or_create_by(model: model)
        self.car = car
    end

    def car_model
       self.car ? self.car : nil
    end
end
