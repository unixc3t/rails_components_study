class Student


  def counter
    @counter ||=0
    @counter +=1
  end

end


p Student.new.counter

