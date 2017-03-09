# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '2.1'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.serve_static_assets = true
Rails.application.config.serve_static_files = true
Rails.application.config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'
Rails.application.config.assets.compile = true
Rails.application.config.assets.digest = true

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
