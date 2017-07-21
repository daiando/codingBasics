require 'rubygems'
require 'decisiontree'

attributes = ['temp']
training = [
  [98.7, 'healty'],
  [99.1, 'healty'],
  [99.5, 'sick'],
  [100.5, 'sick'],
  [102.5, 'crazy sick'],
  [107.5, 'dead'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train

test = [101.5, 'healty']

decision = dec_tree.predict(test)
puts "Prediction: #{decision}"
puts "Reality: #{test.last}"
