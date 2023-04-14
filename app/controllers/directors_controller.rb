class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

   render({ :template => "directors_template/index.html.erb"})
  end

  def oldest

   render({ :template => "directors_template/eldest.html.erb"})  
  end

end
