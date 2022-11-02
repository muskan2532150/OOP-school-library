require 'nameable.rb'

class Person < Nameable 
def initialize(name,age,parent_permission='true')
 super()
 @name=name
 @age=age
 @parent_permission=parent_permission
end

def correct_name
    @name
end

end