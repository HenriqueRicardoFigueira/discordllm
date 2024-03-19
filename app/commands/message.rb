# frozen_string_literal: true

# app/commands/message.rb
module Message
  extend Discordrb::Commands::CommandContainer

  Bot.command(:message) do |event|
    response = event.message.content[8..]
    event.respond "Você digitou: #{response}"

    response = HTTParty.post('https://api.openai.com/v1/chat/completions', {
                               headers: {
                                 'Authorization' => 'Bearer SEU_TOKEN_DO_CHATGPT_AQUI',
                                 'Content-Type' => 'application/json'
                               },
                               body: {
                                 model: 'gpt-3.5-turbo',
                                 messages: [
                                   {
                                     role: 'system',
                                     content: "Usuário: #{event.message.content}"
                                   }
                                 ]
                               }.to_json
                             })

    event.respond response['choices'][0]['message']['content']
  end
end
