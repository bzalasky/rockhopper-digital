module SiteHelpers

  def page_title
    title = "Rockhopper Digital | User-friendly Websites and Applications"
    if data.page.title
      title << " | " + data.page.title
    end
    title
  end
  
  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "Rockhopper Digital crafts user-friendly websites and applications for businesses and brands."
    end
    description
  end

end