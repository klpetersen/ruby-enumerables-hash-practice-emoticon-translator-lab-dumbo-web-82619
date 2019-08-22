require 'yaml'
require 'pry'

def load_library(file_path)
file = YAML.load_file(file_path)
new_hash = {:get_meaning => {}, :get_emoticon => {}} 
file.each do |meaning, emoticons| 
  new_hash[:get_meaning][emoticons[1]] = meaning
  new_hash[:get_emoticon][emoticons[0]] = emoticons[1]
  end 
new_hash
end

def get_japanese_emoticon(file, emoticon)
  file = load_library(file)
  file[:get_emoticon].each do |english, japanese|
    if emoticon == english 
    file[:get_emoticon][emoticon]
    else 
      "Sorry, that emoticon was not found"
    end
  end
end

def get_english_meaning(file, emoticon)

end

#get_meaning = japanese |||  get_emoticon = english