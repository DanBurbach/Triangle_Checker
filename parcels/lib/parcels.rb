class Parcel
  attr_accessor(:length, :width, :height, :weight, :volume)
  def initialize(length, width, height, weight)
    @length = length.to_i
    @width = width.to_i
    @height = height.to_i
    @weight = weight.to_i

  end

  def volume
    if (self.length == 0) || (self.width == 0) || (self.height == 0)
      "you need to enter a whole number for parcel dimensions"
    else
      self.volume = (self.length * self.width * self.height)
    end
  end

  def price?

  end
end
