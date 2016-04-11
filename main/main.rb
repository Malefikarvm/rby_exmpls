=begin

=end
require "../cmpnnts/object.rb"
require 'net/http'

class Main

  def initialize
    @greetings
  end

  def main(grtngs)
    @greetings =  grtngs
    puts @greetings

    obj = Obj.new
    obj.add("the world is mine", :second)
    obj.add("sure it is", :third)
    obj.iterate_keys
    obj.iterate_hashes
    puts obj.json_to_hash(obj.to_json)
  end

end

mn = Main.new
mn.main("Hello World!")
