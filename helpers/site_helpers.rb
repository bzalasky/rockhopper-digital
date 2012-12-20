module SiteHelpers

  def page_title
    title = "Rockhopper Digital"
    if data.page.title
      title << " | " + data.page.title
    end
    title
  end
  
  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "Rockhopper Digital creates user-friendly websites and applications that work cross-browser and cross-device."
    end
    description
  end

end