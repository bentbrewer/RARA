class Med53sController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index

end