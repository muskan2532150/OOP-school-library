require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

require_relative 'display_module'
require_relative 'create_module'

class App
  include DisplayAll
  include CreateElement
  def initialize
    @books = []
    @rentals = []
    @person = []
  end
end
