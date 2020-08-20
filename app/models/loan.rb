class Loan < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :car, optional: true
     accepts_nested_attributes_for :car
     validates :category, presence: true
     validates :amount, presence: true

   #   def car_manufacturer=(attributes)
   #      self.car = Car.find_or_create_by(attributes)
   #    end
   #    def car
   #       self.car ? self.car.manufacturer : nil
   #    end
end
