require "middleman-core"

Middleman::Extensions.register :analytics_config_switcher do
  require "analytics_config_switcher/extension"
  AnalyticsConfigSwitcher
end
