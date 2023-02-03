class Program < ApplicationRecord
    validates :name, presence: true

    has_many :user_programs, dependent: :destroy
    has_many :users, through: :user_programs

    has_many :program_lifts, dependent: :destroy
    has_many :lifts, through: :program_lifts

    has_many :workouts, dependent: :destroy
end