class Api::Programs::ProgramPresenter < Presenter
  def as_json(*)
    {
      program: @object.name,
      lifts: lifts,
    }
  end

  private
  def lifts
    @object.lifts.map do |lift|
      lift.name
    end
  end
end