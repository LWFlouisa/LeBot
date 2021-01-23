# Retrieves an answer instantly from training data.
def answer
  require "aLearn"

  ALearn::LearnAnswer.find_answer
end

# answer
