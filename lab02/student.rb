class Student
  :index
  :name
  :last_name
  attr_reader :status

  def initialize(index, name, last_name, status)
    @index = index
    @name = name
    @last_name = last_name
    @status = status
  end

  def show
    @last_name + ' ' + @name + ' (' + (@index.to_s) + ')'
  end

end
