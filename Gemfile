source 'https://rubygems.org'

gem 'rails', '~> 5.2.0'
gem 'bcrypt'
gem 'faker'
gem 'bootstrap-sass'
gem 'puma',         '~> 3.7'
gem 'sass-rails',   '~> 5.0'
gem 'uglifier',     '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks',   '~> 5'
gem 'jbuilder',     '~> 2.5'
gem 'rails-i18n' # 今回はこのgemを追加しています。
gem 'active_decorator'
gem 'will_paginate' # この行を追加してください。
gem 'bootstrap-will_paginate' # この行を追加してください。
gem 'rails_autolink'
gem 'activestorage', '~> 5.2'
gem "image_processing", "~> 1.11"
gem "mini_magick", "~> 4.11"
gem 'font-awesome-sass'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '0.20.0'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
# Mac環境でもこのままでOKです
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
