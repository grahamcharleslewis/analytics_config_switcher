# Require core library
require 'middleman-core'

# Extension namespace
class AnalyticsConfigSwitcher < ::Middleman::Extension
  expose_to_template :switch_header_links
  # expose_to_config :create_header_links
  option :header_links, [], 'The new set of header links for the layout'
  option :layout, '', 'The layout you want to change the headers for'

  def initialize(app, options_hash={}, &block)
    @app = app
    super
  end

  # def create_header_links
  #   puts "Hello from config..."
  # end 
  
  # def before_build 
  #   puts "=" * 80
  #   puts current_page.layout
  #   puts "=" * 80
  # end 

  def switch_header_links
    "Not sure how or even if this helps!"
  end

  def after_configuration
    puts "=" * 80
    puts @app.config[:tech_docs][:header_links]
    # puts current_page.url if current_page
    # puts options
    # puts "Updating URL..."
    # @app.config[:url] = options.header_links
    # puts @app.config[:url]
    # puts "After configuration"
    puts "=" * 80
  end
end
