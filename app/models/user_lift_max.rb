class UserLiftMax < ApplicationRecord
    validates :user_id, :lift_id, :training_max, :unit, presence: true
    validates :user_id, uniqueness: { scope: :lift_id,
        message: 'User already has a training max for this lift' } 

    belongs_to :user
    belongs_to :lift
end