
class Parcel
  # require('loc')
  attr_accessor(:length, :width, :height, :weight, :volume, :price, :distance)
  def initialize(length, width, height, weight, distance)
    @length = length.to_i
    @width = width.to_i
    @height = height.to_i
    @weight = weight.to_i
    @distance = distance.to_i

  end

  def volume
    if (self.length == 0) || (self.width == 0) || (self.height == 0)
      "not a whole number for parcel dimensions."
    else
      self.volume = (self.length * self.width * self.height)
    end
  end

  def price
    if self.distance == 1
      self.volume * self.weight * 0.25
    elsif self.distance == 2
      self.volume * self.weight * 0.5
    elsif self.distance == 5
      self.volume * self.weight * 1.25
    elsif self.distance == 20
      self.volume * self.weight * 5.75
    elsif self.distance == 100
      self.volume * self.weight * 20.45
    end
  end
end
