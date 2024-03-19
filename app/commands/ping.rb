# frozen_string_literal: true

# app/commands/ping.rb
module Ping
  extend Discordrb::Commands::CommandContainer

  Bot.command(:ping) do |event|
    event.respond 'Pong!'
  end

  Bot.message(content: 'ping') do |event|
    event.respond 'Pong!'
  end
end
