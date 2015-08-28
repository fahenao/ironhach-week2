require 'imdb'
require 'pry'

class MovieLovers
  attr_accessor :posters
  def initialize
    @posters = []
    #initializer
  end

  def get_poster(keyword)
    movie_array = Imdb::Search.new(keyword).movies()

    movie_array.each do |i|
      break if @posters.size == 9
      if i.poster == nil
        next
      else
        @posters << i.poster
      end
    end
  end
end