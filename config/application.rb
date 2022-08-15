require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
# 略
module LikeApp
  class Application < Rails::Application
    config.load_defaults 6.0
    # ***** 以下を追加 *****
    config.i18n.default_locale = :ja
    config.time_zone = "Asia/Tokyo"
    # ***** 以上を追加 *****
    # 略
  end
end
