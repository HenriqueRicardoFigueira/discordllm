# frozen_string_literal: true

class OllamaRequestJob < ApplicationJob

  def perform(query)
    client = Ollama.new(
      credentials: { address: ENV['OLLAMA_URL'] },
      options: { server_sent_events: true }
    )

    response = client.generate(
      { model: ENV['OLLAMA_MODEL'],
        prompt: query,
        stream: false }
    )
    
    response.first['response']
  end

end