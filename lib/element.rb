
class Element

  require_relative 'browser'

  attr_reader :name, :element

    def initialize(name, path)

      @name = name
      @path =  path[/'([^\]]*)'/]

      puts "I know that you're looking for element with ID: #{@path}"
    end

end