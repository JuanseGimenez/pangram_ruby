class Pangram
	ALPAHBET = ('a'..'z').to_a.freeze

	attr_reader :phrase, :missing_letters_aux

	def initialize(phrase)
		@phrase = phrase
		@phrase_lowercase = phrase.downcase
		@missing_letters_aux = []
	end

	def is_pangram?
		@phrase.length > 0 &&
      ALPAHBET.all? { |letter| @phrase_lowercase.include?(letter) }
   end

  def missing_letters
    @phrase.length > 0
      ALPAHBET.all? { |letter| @phrase_lowercase.include?(letter)  ? true :  @missing_letters_aux.push(letter) }
    return "Missing letters is: #{@missing_letters_aux.any? ? @missing_letters_aux : 'The phrase is complete'}"
  end
end

phrases = [ "Jived fox nymph grabs quick waltz",
            "Glib jocks quiz nymph to vex dwarf",
            "I love Ruby",
            "This phrase is not pangram",
            "Pack my box with five dozen liquor jugs" ]

phrases.each do |param|
  puts "========================="
  puts "Phrase: #{param}"
  pangram = Pangram.new(param)
  puts "Is pangram: #{pangram.is_pangram?}"
  puts pangram.missing_letters
end
