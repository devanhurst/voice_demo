require 'pocketsphinx-ruby'
require 'espeak'
include ESpeak

Speech.new("Hello Ruby Lightning Talks!").speak

configuration = Pocketsphinx::Configuration::Grammar.new('demo.gram')
Pocketsphinx::LiveSpeechRecognizer.new(configuration).recognize do |input|
  system 'clear'
  puts input.upcase
  case input
  when 'hello charlie'
    Speech.new("hello dev").speak
  when 'goodbye charlie'
    Speech.new("goodbye dev").speak
  end
end