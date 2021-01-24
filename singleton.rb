# with singleton pattern we can create n number or instance
# we can restrict n of instance
# by default only one instance available

require 'singleton'

class Shop
  include Singleton
  p "singleton class"
  def test
    p 'test singleton'
  end
end

p Shop.instance.object_id

obj = Shop.instance
obj.test