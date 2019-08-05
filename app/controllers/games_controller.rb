class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    p @x = params["val"]

  end
end

require 'json'
require 'open-uri'


def found? (word)
  url = "https://wagon-dictionary.herokuapp.com/#{word}"
  user_serialized = open(url).read
  user = JSON.parse(user_serialized)
  user['found']
end

found?("word")

a = ["a", "b", "c", "t"]
m = false

a.length.times do
  z = 1
  w = a.first(z)
  w.each_with_index do|index, x|
    y = 0
    if y == w.length
      q = a[y + 1]
      a[1] = a[y]
      a[y] = q
      k = a.join
      v = found?(k)
      m = true if v == true
      y += 1
    end
  end
  z += 1
end

return m

