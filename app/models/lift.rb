class Lift < ApplicationRecord
    validates :name, presence: true

    has_many :user_lift_maxes, dependent: :destroy
    has_many :users, through: :user_lift_maxes

    has_many :program_lifts, dependent: :destroy
    has_many :programs, through: :program_lifts
end