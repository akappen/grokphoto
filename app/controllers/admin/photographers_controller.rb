class Admin::PhotographersController < Admin::HomeController
  respond_to :html
  before_filter :load_resource

  def edit
    respond_with :admin, @photographer
  end

  def update
    @photographer.update_attributes params[:photographer].permit(:email, :password, :name, :tagline, :time_zone, :description, :phone, :portfolio_url, :blog_url, :facebook_url, :twitter_url, :google_analytics_key, :google_verification, :conversion_code, :remember_me)
    if @photographer.valid?
      respond_with(@photographer, :location => edit_admin_photographer_path)
    else
      respond_with :admin, @photographer
    end
  end

  private #----

    # make sure everything is scoped to the current_photographer so we can't access / modify other user's content.
    def load_resource
      @photographer = Photographer.first
    end

end