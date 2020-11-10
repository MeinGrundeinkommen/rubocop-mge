# frozen_string_literal: true

# require 'rubocop/mge/version'

module RuboCop
  module Cop
    module Mge
      # Good:
      # Bad:
      class NoMailParameter < RuboCop::Cop::Cop
        MSG = 'Do not send email addresses via query parameters'

        def_node_search :using_mail_parameter?, <<~PATTERN
          (send (send nil? :params) :[] (sym :email))
        PATTERN

        def on_send(node)
          return unless in_controller?(node)
          return unless using_mail_parameter?(node)

          add_offense(node, location: :expression)
        end

        def in_controller?(node)
          path = node.location.expression.source_buffer.name
          path.include?(File.join('app', 'controllers'))
        end
      end
    end
  end
end
