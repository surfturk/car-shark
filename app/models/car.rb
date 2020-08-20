class Car < ApplicationRecord
    has_many :loans
    has_many :users, through: :loans, dependent: :destroy
    validates :manufacturer, presence: true, format: { without: /[0-9]/, message: "does not allow numbers" }
    validates :model, presence: { :message => "can't be blank dude!"}
end
