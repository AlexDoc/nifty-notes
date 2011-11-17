module NotesHelper
  def first_word(title)
    title.gsub /\s+.*/, ''
  end

  def next_words(title)
    title.gsub /^[^\s]+/, ''
  end
end
