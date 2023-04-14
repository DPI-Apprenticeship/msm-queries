Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/directors/eldest", { :controller => "directors", :action => "oldest" })
  #get("/directors/eldest", { :controller => "directors", :action => "oldest" })

  get("/directors", { :controller => "directors", :action => "index" })
end
