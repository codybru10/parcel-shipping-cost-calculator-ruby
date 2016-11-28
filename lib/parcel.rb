class Parcel
  define_method(:initialize) do |height, length, width, weight|
    @height = height
    @length = length
    @width = width
    @weight = weight
  end

  define_method(:volume) do
    @volume = @height * @length * @width
  end

  define_method(:cost_to_ship) do
    volume()
    @cost_to_ship = (@volume.to_i * @weight.to_i) * (0.025)
  end

end
