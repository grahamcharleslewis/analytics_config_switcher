# Require core library
require 'middleman-core'

# Extension namespace
class AnalyticsConfigSwitcher < ::Middleman::Extension
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

  def after_configuration
    puts "=" * 80
    puts @app.config[:tech_docs][:header_links]
    # puts options
    # puts "Updating URL..."
    # @app.config[:url] = options.header_links
    # puts @app.config[:url]
    # puts "After configuration"
    puts "=" * 80
  end
end
