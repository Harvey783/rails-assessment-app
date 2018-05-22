class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def home
    @projects = current_user.projects.over_due
  end
end
