Rails.application.routes.draw do
  get "/jobs", to: "jobs#index"
  get "/jobs/:id", to: "jobs#show"
end
