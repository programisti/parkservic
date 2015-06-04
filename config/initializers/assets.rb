Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( bootstrap-wysihtml5/bootstrap-wysihtml5.css )
Rails.application.config.assets.precompile += %w( bootstrap-wysihtml5/index.css )

Rails.application.config.assets.precompile += %w( google-maps.js map.js map.css )
