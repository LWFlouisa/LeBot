def search
  require "aLearn"

  ALearn::LearnAnswer.bf_search
end

def spout
  require "aLearn"

  ALearn::LearnAnswer.find_answer
end

## This will be the primary chatbot engine.
require 'programr'

bot_name = "NVL AIML(main)"
usr_name = "SARAH"

brains = Dir.glob("chatbots/*")

robot = ProgramR::Facade.new
robot.learn(brains)

puts " Welcome to NVL AIML. I will guide you through aspects of novel and comic size dimensions."

while true
  print "#{usr_name } >> "
  s = STDIN.gets.chomp

  reaction = robot.get_reaction(s)

  if reaction == ""
    # reaction.play("en")

    STDOUT.puts "#{bot_name} << I have no answer for that."
  elsif reaction == "Lets learn something new."; search
  elsif reaction ==     "Let learn a new word."; spout
  else
    # reaction.play("en")

    STDOUT.puts "#{bot_name} << #{reaction}"
  end
end
