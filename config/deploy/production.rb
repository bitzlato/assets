# Copyright (c) 2019 Danil Pismenny <danil@brandymint.ru>

# frozen_string_literal: true

set :stage, :production

server ENV.fetch('PRODUCTION_SERVER'), user: fetch(:user), roles: fetch(:roles)
