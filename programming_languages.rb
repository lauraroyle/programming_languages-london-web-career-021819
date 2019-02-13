require "pry"

def reformat_languages(languages)
  new_hash = {}

   languages.each do |oo_or_functional, language_hash| #:oo, ruby nested hash
     language_hash.each do |language, attribute| #:ruby, type hash
       attribute.each do |type, string| #:type, "interpreted"
         if
           new_hash[language].nil?
           new_hash[language] = {} #creates a new hash if first iteration is empty
         end
         #then we can start to build the new has from the bottom up
          new_hash[language][:style] ||= [] #creates empty array for style value
          new_hash[language][:style] << oo_or_functional
         if
           new_hash[language][type].nil?
           new_hash[language][type] = {}
           binding.pry
         end
       end
    end
  end
end
