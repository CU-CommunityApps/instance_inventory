class Instance
  attr_reader :item
  
  def initialize(item)
    @item = item
  end
  
  def self.all
    TABLES['environments'].items.to_a.map{|i| Instance.new(i)}
  end

  def self.[](name)
    Instance.new(TABLES['environments'].items.at(name))
  end
  
end