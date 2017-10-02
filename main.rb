# Program MagicBall
# version 0.1
current_path = File.dirname(__FILE__)

def load_file(file_path)
  puts "error read file: #{file_path}" unless File.exist?(file_path)

  f = File.new(file_path, 'r:UTF-8')
  data = f.readlines.map(&:chomp)
  f.close

  data
end

welcome_texts = load_file("#{current_path}/data/welcome_texts.txt")
answers = load_file("#{current_path}/data/answers.txt")

# show welcome
puts welcome_texts.sample

# We make a random output with a random delay
sleep(rand(5))
puts answers.sample
