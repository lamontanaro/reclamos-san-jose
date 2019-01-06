Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf )
Rails.application.config.assets.precompile += %w(admin.scss)
Rails.application.config.assets.precompile += %w(admin.js)
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
