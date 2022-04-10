Rails.application.routes.draw do
  get "/jobs", to: "jobs#index"
  get "/jobs/:id", to: "jobs#show"
  get "/companies", to: "companies#index"
  get "/companies/:id", to: "companies#show"
end
