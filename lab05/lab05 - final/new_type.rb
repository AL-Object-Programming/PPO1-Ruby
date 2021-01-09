class NewType < Book



  def initialize(title, type)
    super(title, type)
  end

  def get_type
    @type
  end

end