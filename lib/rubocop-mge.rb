# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/mge'
require_relative 'rubocop/mge/version'
require_relative 'rubocop/mge/inject'
require_relative 'rubocop/cop/security/no_mail_parameter'

RuboCop::Mge::Inject.defaults!
