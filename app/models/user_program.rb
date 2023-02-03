class UserProgram < ApplicationRecord
    validates :user_id, :program_id, presence: true
    validates :user_id, uniqueness: { scope: :program_id,
        message: 'User already started this program' } 

    belongs_to :user
    belongs_to :program
end