desc "Fetching gametime data from server"
task :start_game_time => :environment do
    puts 'Fetching gametime'
    GameTimeJob.perform_later
end