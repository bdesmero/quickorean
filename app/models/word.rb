class Word < ActiveRecord::Base
  attr_accessible :example_english, :example_korean, :translation, :word

  validates_presence_of :word, :translation
end
