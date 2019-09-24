class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |p|
      p.artist == self
    end
  end

  #returns an array of all the galleries and city that an artist has paintings in
  def galleries
    paintings.map do |p|
      p.gallery
    end
  end
  
  #returns an array of all the cities that an artist has paintings in
  def cities
    galleries.map do |c|
      c.city
    end
  end

  def self.total_experience
    total_xp = 0
    self.all.each  do |artist|
      total_xp += artist.years_experience
    end
    total_xp
  end

  def self.most_prolific
    # most_xp = 0
    # self.all.each do |artist| 
    #   if artist.years_experience >= most_xp
    #     most_xp = artist.years_experience
    #   end
    # end
    # most_xp
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end

  def create_painting(title,price,gallery)
    new_painting = Painting.new(self,gallery, title, price )
  end

end
