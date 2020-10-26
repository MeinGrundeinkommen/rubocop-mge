# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/mge'
require_relative 'rubocop/mge/version'
require_relative 'rubocop/mge/inject'

RuboCop::Mge::Inject.defaults!

require_relative 'rubocop/cop/mge_cops'
