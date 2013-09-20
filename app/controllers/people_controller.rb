class PeopleController < ApplicationController
  def new
    @person = Person.new
    @person.addresses.build
  end
  def create
    @person = Person.new(params[:person])
    respond_to do |format|
      if @person.save
        format.html { redirect_to(@person, :notice => 'Person was Successfully created.')}
        format.xml {render :xml => @person, :status => :created, :location => @person }
      else 
        format.html { reder :action => "new"}
        format.xml { render :xml => @person.erros, :status => :unprocessable_entity }
      end
    end    
  end
  def index
    @people = Person.all
    
    respond_to do |format|
      format.html 
      format.xml {render :xml => @person}
    end
    
  end
  def show
    @person = Person.find(params[:id])
    @person.addresses.build
    respond_to do |format|
      format.html 
      format.xml {render :xml => @person}
    end
  end
  def edit
    @person = Person.find(params[:id])
  end
  def update
    @person = Person.find(params[:id])
    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to(@person, :notice => 'Person was successfully updated.')}
        format.xml { head :ok}
      else
        format.html {render :action => "edit"}
        format.xml {render :xml => @person.errors, :status => :unprocessable_entity}        
      end
    end
  end
  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    respond_to do |format|
      format.html {redirect_to(person_url)}
      format.xml {head :ok}
    end
  end
end
