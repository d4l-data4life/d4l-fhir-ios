source "https://rubygems.org"

gem "fastlane"
gem "xcodeproj"
gem "cocoapods", "1.9.3"
gem "asciidoctor"

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
