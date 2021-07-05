Rails.application.routes.draw do
  mount Static::Engine => "/static"
end
