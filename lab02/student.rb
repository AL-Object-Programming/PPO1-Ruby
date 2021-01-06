class Student
  :index
  :name
  :last_name
  :status

  def initialize(index, name, last_name, status)
    @index = index
    @name = name
    @last_name = last_name
    @status = status
  end

  def to_string
    @last_name + ' ' + @name + ' (' + (@index.to_s) + ')'
  end

  def get_status
    @status
  end

end
