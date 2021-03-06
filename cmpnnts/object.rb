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

  def loops

    i = 1

    for j in i..5 #for statement
      puts j
      i = j + 1
    end

    puts i += 1 until i == 10 #until statement

    (i..15).each { puts i += 1  unless  i >= 15 } #each with unless statement


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