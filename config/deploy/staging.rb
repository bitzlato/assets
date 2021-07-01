# Copyright (c) 2019 Danil Pismenny <danil@brandymint.ru>

# frozen_string_literal: true

set :stage, :staging

server ENV.fetch('STAGING_SERVER'), user: fetch(:user), roles: fetch(:roles)
