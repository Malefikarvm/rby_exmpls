require 'json'

class Obj

  def initialize
    @obj = { "exm1" => :first }
    @values
  end

  def obj_size
    puts @obj.length
  end

  def iterate_hashes
    @values = Hash.new(0)
    @obj.values.each_with_index { |val, index| @values[val] += index+1 }
    puts @values
  end

  def add(key, hash)
    @obj[key] = hash
  end

  def iterate_keys
    @obj.keys.each { |key| puts key.split.map(&:capitalize).join(' ') }
  end

  def to_json
    return @obj.to_json
  end

  def json_to_hash(json)
    return JSON.parse(json)
  end
end