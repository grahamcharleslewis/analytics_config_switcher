# Analytics Config Switcher

## Configure the using app

Add Gem to `Gemfile`

```ruby
gem "analytics_config_switcher", path: "../analytics_config_switcher"
```

In `config.rb` add...

```ruby
activate :analytics_config_switcher
```

Create `source/layouts/analytics_layout.html.erb`

```ruby
<% wrap_layout :core do %>
  <%= yield %>
<% end %>
```

Create `source/analytics.html.md.erb`

```ruby
---
layout: analytics_layout
---
```