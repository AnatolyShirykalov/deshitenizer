class ContentsController < ApplicationController
  def get
    @content = Content.find_by(get_params)
    respond_to do |format|
      format.text do
        render text: @content.value
      end
      format.json do
        render json: @content
      end
      format.html
    end
  end

  def create
    @content = Content.create!(create_params)
    respond_to do |format|
      format.json do
        render json: {status: "ok"}
      end
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
