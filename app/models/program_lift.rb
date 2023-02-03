class ProgramLift < ApplicationRecord
    validates :program_id, :lift_id, presence: true
    validates :program_id, uniqueness: { scope: :lift_id,
        message: 'Program already includes this lift' } 

    belongs_to :program
    belongs_to :lift
end