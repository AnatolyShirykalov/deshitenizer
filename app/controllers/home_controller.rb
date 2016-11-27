class HomeController < ApplicationController
  def index
    @cgroups = Cgroup.all
  end
end
