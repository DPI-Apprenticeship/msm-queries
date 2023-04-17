class MoviesController < ApplicationController

  def index
    @filmography = Movie.all

    render({ :template => "movies_template/index.html.erb"})
  end  

  def movie_details

    the_id = params.fetch("an_id")
    @the_film = Movie.where({ :id => the_id })#.at(0)

    render({ :template => "movies_template/show.html.erb"}) 
  end

end