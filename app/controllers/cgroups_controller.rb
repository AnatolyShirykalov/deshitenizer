class CgroupsController < ApplicationController
  def index
    @cgroups = Cgroup.all
    respond_to do |format|
      format.json do
        render json: @cgroups
      end
      format.html
    end
  end
end
