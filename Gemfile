# Copyright (c) 2019 Danil Pismenny <danil@brandymint.ru>

# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version')

group :deploy do
  gem 'capistrano', require: false
  gem 'capistrano-git-with-submodules'
  gem 'capistrano-shell', require: false
end
