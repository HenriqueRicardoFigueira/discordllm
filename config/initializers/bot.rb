require 'discordrb'

ChanelID = 1153312562579001346

Bot = Discordrb::Commands::CommandBot.new(
  token: Rails.application.credentials.discord[:token],
  client_id: Rails.application.credentials.discord[:client_id],
  prefix: '!'
)

Dir["#{Rails.root}/app/commands/*.rb"].each { |file| require file }
Bot.run(true)

puts "Invite URL: #{Bot.invite_url}"