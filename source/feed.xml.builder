xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "Rockhopper Digital"
  xml.subtitle "Tap into a chronological feed of code, design, culture, experience and miscellany."
  xml.id "http://www.rockhopperdigital.com"
  xml.link "href" => "http://www.rockhopperdigital.com/"
  xml.link "href" => "http://www.rockhopperdigital.com/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "Benjamin Zalasky" }

  blog.articles[0..5].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "href" => article.url
      xml.id article.url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "Benjamin Zalasky" }
      xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end