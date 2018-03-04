defmodule OrderapiWeb.Router do
  use OrderapiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", OrderapiWeb do
    pipe_through :api

    resources "/orders", OrderController, only: [:index]
  end
end
