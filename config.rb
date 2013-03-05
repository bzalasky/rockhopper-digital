#Markdown
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

activate :syntax,
         :linenos => 'inline',
         :anchorlinenos => true,
         :linenostart => 2

#Livereload
activate :livereload

Time.zone = "US/Pacific"

activate :blog do |blog|
  blog.layout = "article"
  blog.sources = "articles/:title.html"
  blog.permalink = "articles/:title"
end

page "/feed.xml", :layout => false
page "/sitemap.xml", :layout => false

activate :directory_indexes

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript
  
  # Use relative URLs
  activate :relative_assets

  activate :asset_hash
end