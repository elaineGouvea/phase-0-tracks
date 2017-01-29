require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new("Nani", "Guigui", "yield") }

  it "has a readable player1" do
    expect(hangman.player1).to eq "Nani"
  end

  it "has a readable player2" do
    expect(hangman.player2).to eq 'Guigui'
  end

  it "has a readable secret_word" do
    expect(hangman.secret_word).to eq 'yield'
  end

  it "should split secret_word into characters" do
    expect(hangman.secret_word_arr).to eq hangman.secret_word.chars
  end

  it "checks if dashes_arr has the same length as secret_word characters" do
    hangman.display_chars
    expect(hangman.dashes_arr.length).to eq hangman.word_length
  end

  it "has a readable guess" do
    hangman.guess = 'a'
    expect(hangman.guess).to eq 'a'
  end

  it "has a writeable guess" do
    hangman.guess = 'a'
    hangman.guess = 'e'
    expect(hangman.guess).to eq 'e'
  end

  it "should say that a guess is repeated" do
    hangman.guess = 'e'
    p @guess, @guesses
    hangman.check_guess('e')
    expect(hangman.guesses).to include hangman.guess
  end

end