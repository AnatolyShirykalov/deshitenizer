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

  private
  def get_params
    params.permit(:key)
  end
end
