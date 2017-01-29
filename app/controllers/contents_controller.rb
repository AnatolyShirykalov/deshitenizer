class ContentsController < ApplicationController
  def create
    @content = Content.create!(create_params)
    respond_to do |format|
      format.json do
        render json: {status: "ok"}
      end
      format.html
    end
  end

  private
  def get_params
    params.permit(:key)
  end
  def create_params
    params.permit(:key, :value)
  end
end
