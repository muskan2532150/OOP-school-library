require 'nameable.rb'

class Person < Nameable 
    attr_accessor: :name, :age
    attr_reader: :id
    def initialize(age,name='unknow',parent_permission='true')
        super()
        @id=
        @name=name
        @age=age
        @parent_permission=parent_permission
    end
       
    def correct_name
           @name
    end

    def can_use_services?
        is_of_age? || @parent_permission
    end

    private
    
    def is_of_age?
        @gae>=18
    end
end
       