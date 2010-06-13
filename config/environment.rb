 ############################################################
#   __     __              __     __                 __      #
#  |  |--.|  |.---.-.----.|  |--.|  |--.-----.-----.|  |--.  #
#  |  _  ||  ||  _  |  __||    < |  _  |  _  |  _  ||    <   #
#  |_____||__||___._|____||__|__||_____|_____|_____||__|__|  #
#                                                            #
 ############################################################

RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Actually used by the app
  config.gem 'haml'
  config.gem 'config_reader', :version => '0.0.6'
  config.gem 'RedCloth'
  config.gem 'authlogic', :version => '2.0.9'
  config.gem 'nokogiri'
  config.gem 'paperclip'
  config.gem 'unicode' # required by has_slug
  config.gem 'has_slug'
  config.gem 'configatron', :version => "2.2.2"
  config.gem 'will_paginate', :version => "2.3.12"
  config.gem 'htmlentities'
  config.gem 'system_timer'

  # Testing
  config.gem "rspec", :lib => false, :version => ">= 1.2.0"
  config.gem "rspec-rails", :lib => false, :version => ">= 1.2.0"
  config.gem "thoughtbot-factory_girl", :lib => false
  config.gem "webrat", :lib => false

  # Rails config
  config.time_zone = 'UTC'
  config.frameworks -= [ :active_resource ]
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de

  # Middleware
  # config.middleware.use Rack::Cache,
  #   :verbose => true,
  #   :metastore   => 'memcached://localhost:11211/blackbook-rack-cache-meta',
  #   :entitystore => 'memcached://localhost:11211/blackbook-rack-cache-body'

end

# require everything in /lib
Dir.glob(RAILS_ROOT+"/lib/*.rb").each { |file| require file }

