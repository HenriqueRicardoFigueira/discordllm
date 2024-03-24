# frozen_string_literal: true

require 'ollama-ai'

# app/commands/message.rb
module Message
  extend Discordrb::Commands::CommandContainer

  Bot.command(:message) do |event|
    query = event.message.content[8..]

    event.respond OllamaRequestJob.perform_now(query)
  end
end
