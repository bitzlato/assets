# Copyright (c) 2019 Danil Pismenny <danil@brandymint.ru>

# frozen_string_literal: true

lock '3.16'

set :user, 'app'
set :application, 'assets'

if ENV['USE_LOCAL_REPO'].nil?
  set :repo_url,
      ENV.fetch('DEPLOY_REPO',
                `git remote -v | grep origin | head -1 | awk  '{ print $2 }'`.chomp)
end
set :keep_releases, 10

set :roles, %w[web].freeze
set :deploy_to, -> { "/home/#{fetch(:user)}/#{fetch(:application)}" }

set :branch, ENV.fetch('BRANCH', 'main')
