require 'decorator.rb'
class CapitalizeDecorator < Decorator
    def correct_name
        puts @nameable.correct_name.capitalize()
    end