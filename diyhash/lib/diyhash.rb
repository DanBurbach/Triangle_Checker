class MyHash
  attr_accessor(:keys, :values, :pairs, :counter)

  def initialize
    @keys = []
    @values = []
    @pairs = []
    @counter = 0
  end

  def myStore(firstitem, seconditem)
    (self.keys).push(firstitem)
    (self.values).push(seconditem)
    (self.pairs).push(counter)
    self.counter +=1
  end

  def myFetch(word)
    variable = (self.keys).index(word)
    p self.values[variable]
  end

  pair = MyHash.new
  pair.myStore("kitten","cute")
  pair.myStore("monkey","dog")

end
