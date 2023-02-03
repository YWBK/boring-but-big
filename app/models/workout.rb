class Workout < ApplicationRecord
    validates :user_id, :program_id, :day, :week, :cycle, presence: true

    belongs_to :user
    belongs_to :program
end