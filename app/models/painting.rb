class Painting

  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(artist, gallery, title, price)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    total = 0
    self.all.each do |p|
      total += p.price
    end
    total
  end
end
