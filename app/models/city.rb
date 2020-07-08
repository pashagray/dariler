class City
  def self.slugs
    %w[
      almaty
      nur-sultan
      shymkent
      karaganda
      atyrau
    ]
  end

  def self.default
    "almaty"
  end

  def self.coords
    {
      almaty: "43.25654,76.92848"
    }
  end
end