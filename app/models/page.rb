class Page < ActiveRecord::Base

  # Validations
  validates :name, :presence => true, :length => { :within => 2..20 }
  validates :keywords, :length => { :within => 2..255, :allow_blank => true }
  validates :body, :presence => true, :length => { :minimum => 10 }

  # Mass-assignment protection
  attr_accessible :name, :keywords, :body, :image, :retained_image

  # Image attachment
  image_accessor :image

  def to_param
    "#{id}-#{name}".parameterize
  end

  # Callbacks
  after_save :clear_cache
  after_create :log_create_event
  after_update :log_update_event
  after_destroy :clear_cache, :log_destroy_event

  # Caching
  CACHED = 'pages'

  def self.cached
    Rails.cache.fetch(CACHED, :expires_in => 1.day) do
      self.order(:id).all
    end
  end

  def clear_cache
    Page.clear_cache
  end

  def self.clear_cache
    Rails.cache.delete(CACHED)
  end

  private #----

    def log_create_event
      Event.create(:description => "Created page: #{name}")
    end

    def log_update_event
      Event.create(:description => "Changed page: #{name}")
    end

    def log_destroy_event
      Event.create(:description => "Deleted page: #{name}")
    end

end