puts "Hello world!"

puts "Привет, #{ARGV[0]}!"
# puts "#{String.methods}"

puts "Какой у тебя любимый язык, #{ARGV[0]}?"
answer = STDIN.gets.chomp
if ["руби", "ruby"].include? answer.downcase
    puts "Nice!"
else
    puts "U suck!"
end

print "Введите команду ОС: "
os_command = STDIN.gets.chomp
system os_command

print "Введите команду Ruby: "
ruby_command = STDIN.gets.chomp
system "ruby -e \"#{ruby_command}\""
