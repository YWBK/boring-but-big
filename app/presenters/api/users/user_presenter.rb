class Api::Users::UserPresenter < Presenter
  def as_json(*)
    {
      user: @object.email,
      first_name: @object.first_name,
      last_name: @object.last_name,
      programs: @object.programs.map { |program| program.name },
      training_maxes: training_maxes,
    }
  end

  private
  def training_maxes
    @object.user_lift_maxes.map do |lift_max|
      {
          lift_name: lift_max.lift.name,
          training_max: lift_max.training_max,
          unit: lift_max.unit,
          updated_at: lift_max.updated_at,
      }
    end
  end
end