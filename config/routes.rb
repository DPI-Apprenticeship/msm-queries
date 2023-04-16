Rails.application.routes.draw do
  get("/directors/eldest", { :controller => "directors", :action => "oldest" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors/show", { :controller => "directors", :action => "director_details" })

  get("/directors", { :controller => "directors", :action => "index" })
end
