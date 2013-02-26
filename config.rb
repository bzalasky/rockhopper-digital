#Markdown
set :markdown_engine, :redcarpet

#Livereload
activate :livereload

activate :directory_indexes

activate :blog do |blog|
  blog.sources = "articles/:title.html"
  blog.permalink = "articles/:title"
end

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
end