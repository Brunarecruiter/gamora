class PeopleController < ApplicationController
  def index
  end

  def new
  end

  def create
    @person = Person.new(person_params)

    @person.save
    redirect_to @person
  end

  private

  def person_params
    params
      .require(:person).permit(:email, :ppd)
  end

end
