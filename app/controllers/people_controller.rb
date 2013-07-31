class PeopleController < ApplicationController

  before_filter :authenticate, :only => :show

  def index
    @people = [
        'Developer',
        'Owner'
      ]
  end
  
  def show
    @person = params[:id]
  end

  private
  
  def authenticate
    if params[:id] == "Owner"
      redirect_to people_url, :notice => "That page is restricted."
    end
  end

end
