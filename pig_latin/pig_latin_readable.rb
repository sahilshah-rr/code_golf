module PigLatin
  def self.translate(string)
    string.gsub(/\w+/) do |word|
      groups = word.match(/(.*?)([aeiou]|y(?![aeiou]))(.*)/i).captures
      pig = "#{groups[1]}#{groups[2]}#{groups[0].empty? ? 'w' : groups[0]}ay"
      word =~ /^[A-Z]/ ? pig.capitalize : pig
    end
  end
end
