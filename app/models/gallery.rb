class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |g|
      g.gallery == self
    end
  end

  def artists
    paintings.map do |p|
      p.artist.name
    end
  end

  def artist_name
    some_arr = []
    artists.each do |a|
       some_arr << a.name
    end
    some_arr.uniq
  end

  # this was only returning the highest price of a painting of a particular gallery
  # def most_expensive_painting
  #   current_most_p = 0
  #   paintings.each do |most_p|
  #     if most_p.price >= current_most_p
  #       current_most_p = most_p.price
  #     end
  #   end
  #   current_most_p
  # end

  def most_expensive_painting
    paintings.max_by do |i|
      i.price
    end
  end
end
