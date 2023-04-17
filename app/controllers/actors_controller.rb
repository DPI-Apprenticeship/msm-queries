class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    @filmography = Movie.all
    @list_of_directors = Director.all

    render({ :template => "actors_template/index.html.erb"})
  end

  def actor_details

    act_id = params.fetch("actor_id")
    @actor = Actor.where({ :id => act_id }).at(0)
    #@film = Movie.where({ :director_id => @the_director.id })

    @character = Character.where({ :actor_id => act_id })
    

    render({ :template => "actors_template/show.html.erb"}) 
  end

end
