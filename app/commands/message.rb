# frozen_string_literal: true

require 'ollama-ai'

# app/commands/message.rb
module Message
  extend Discordrb::Commands::CommandContainer

  Bot.command(:message) do |event|
    query = event.message.content[8..]
    client = Ollama.new(
      credentials: { address: ENV['OLLAMA_URL'] },
      options: { server_sent_events: true }
    )

    response = client.generate(
      { model: ENV['OLLAMA_MODEL'],
        prompt: query,
        stream: false }
    )
    event.respond response.first['response']
  end
end
