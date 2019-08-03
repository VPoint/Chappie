Rails.application.config.to_prepare do
  CamaleonCms::SiteHelper.module_eval do
    def cama_current_site_helper(args)
      if !args[:site].present? && request.present?
        args[:site] = CamaleonCms::Site.find_by_slug('localhost:3000').decorate
      end
    end
  end
end

