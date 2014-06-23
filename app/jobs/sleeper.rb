#bundle exec rake environment resque:work QUEUE=sleep
class Sleeper
  @queue = :sleep
  def self.perform(seconds)
    puts "asssssssssssssssss",seconds
    puts "asssssssssssssssss",seconds
    puts "asssssssssssssssss",seconds
    puts "asssssssssssssssss",seconds
    puts "asssssssssssssssss",seconds
  end
end