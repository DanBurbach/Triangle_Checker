
class Parcel
  # require('loc')
  attr_accessor(:length, :width, :height, :weight, :volume, :price, :shipfrom, :shipto, :distance)
  def initialize(length, width, height, weight, shipfrom, shipto, distance)
    @length = length.to_i
    @width = width.to_i
    @height = height.to_i
    @weight = weight.to_i
    # @shipfrom = shipfrom
    # @shipto = shipto

  end

  def volume
    if (self.length == 0) || (self.width == 0) || (self.height == 0)
      "not a whole number for parcel dimensions."
    else
      self.volume = (self.length * self.width * self.height)
    end
  end

end
