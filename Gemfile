# frozen_string_literal: true
# typed: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem("faraday", '~> 1.10.3')
gem("faraday-multipart")
gem("oj")
gem("rake", ">= 12.3.3")
gem("zeitwerk", ">= 2.6.0")

group(:test) do
  gem('mocha')
  gem('rubocop', require: false)
  gem('rubocop-minitest', require: false)
  gem('rubocop-performance', require: false)
  gem('webmock')
end

group(:development) do
  gem('pry')
  gem('pry-nav')
  gem('spoom')
  gem('tapioca', require: false)
end

gemspec
