module PigLatin
  def self.translate(string)
    string.gsub(/\w+/) do |word|
      md = word.match(/[aeiou]|y(?![aeiou])/i)
      pig = "#{md}#{md.post_match}#{md.pre_match.empty? ? 'w' : md.pre_match}ay"
      word =~ /^[A-Z]/ ? pig.capitalize : pig
    end
  end
end
