class PagesController < ApplicationController
  respond_to :html

  def show
    @page = Page.find(params[:id] || Page.order(:id).first.id)
    respond_with @page
  end

end
