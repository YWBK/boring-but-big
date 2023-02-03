class Api::Programs::ProgramsPresenter < Presenter
  def as_json(*)
    {
      programs: @object.map { |program| Api::Programs::ProgramPresenter.new(program) }
    }
  end
end