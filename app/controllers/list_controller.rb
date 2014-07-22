class ListController < ApplicationController
  attr_accessor :students_list
  def index
    @students_list=[["Dan",21],["Andrei",20]]
    @stuff = "Hello World!"
  end

  def list
    @students_list
  end
  
  def student(name,age)
    return name,age
  end
  

  def add_student
    @students_list.push(["Mihai",20])
  end

end


