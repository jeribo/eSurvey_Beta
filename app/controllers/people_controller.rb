class PeopleController < InheritedResources::Base
  def new
    @person = Person.new
    @person.addresses.build
    
  end
end
