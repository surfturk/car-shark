class Note < ApplicationRecord
    belongs_to :car
    belongs_to :user
    validates :notes, presence: true
end
