# Does a brute force search to find answer on training data.
def search
  require "aLearn"

  ALearn::LearnAnswer.bf_search
end

# Retrieves an answer instantly from training data.
def answer
  require "aLearn"

  ALearn::LearnAnswer.find_answer
end

search
# answer
