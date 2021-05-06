class Pangram
  ALPAHBET = ('a'..'z').to_a.freeze

  def initialize(phrase)
    @phrase = phrase
    @phrase_lowercase = phrase.downcase
  end

  def phrase=(phrase)
    @phrase = phrase
    @phrase_lowercase = phrase.downcase
  end

  def is_pangram?
    @phrase.length > 0 &&
      ALPAHBET.all? { |letter| @phrase_lowercase.include?(letter) }
  end

  def missing_letters
    ALPAHBET.map { |letter| letter unless @phrase_lowercase.include?(letter) }.compact
  end
end
