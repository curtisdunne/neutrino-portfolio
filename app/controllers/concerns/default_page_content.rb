module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Neutrino Software Company | Portfolio"
    @seo_keywords = "Curtis Dunne portfolio"
  end
end
