 ############################################################
#   __     __              __     __                 __      #
#  |  |--.|  |.---.-.----.|  |--.|  |--.-----.-----.|  |--.  #
#  |  _  ||  ||  _  |  __||    < |  _  |  _  |  _  ||    <   #
#  |_____||__||___._|____||__|__||_____|_____|_____||__|__|  #
#                                                            #
 ############################################################

RAILS_GEM_VERSION = '2.3.9' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem 'rack', :version => '1.1.0' # 1.2.1 causing major issues... TODO upgrade Rails!!

  config.gem 'haml', :version => '3.0.12'
  config.gem 'config_reader', :version => '0.0.6'
  config.gem 'RedCloth', :version => '4.2.3'
  config.gem 'authlogic', :version => '2.0.9'
  config.gem 'nokogiri'
  config.gem 'paperclip', :version => '2.3.3'
  config.gem 'unicode', :version => '0.3.1' # required by has_slug
  config.gem 'has_slug', :version => '0.2.7'
  config.gem 'configatron', :version => '2.2.2'
  config.gem 'will_paginate', :version => '2.3.12'
  config.gem 'htmlentities', :version => '4.2.1'
  config.gem 'system_timer', :version => '1.0'

  # Deployment
  config.gem "cap-recipes", :lib => false
  config.gem "capistrano-ext", :lib => false

  # Testing
  config.gem "rspec", :lib => false, :version => "1.3.0"
  config.gem "rspec-rails", :lib => false, :version => "1.3.2"
  config.gem "factory_girl", :lib => false
  config.gem "webrat", :lib => false

  # Rails configuration
  config.time_zone = 'UTC'
  config.frameworks -= [ :active_resource ]
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de

end

# require everything in /lib
Dir.glob(RAILS_ROOT+"/lib/*.rb").each { |file| require file }

# We <3 Exceptions
ExceptionNotification::Notifier.exception_recipients = %w(jamie+blackbook@jamiedubs.com)
ExceptionNotification::Notifier.sender_address =%("000000book App Error" <noreply@000000book.com>)
ExceptionNotification::Notifier.email_prefix = "[000book] "

