class Timer
  attr_reader :seconds
  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  def seconds=(seconds)
    quantify seconds
  end

  def time_string
    @time_string = (stringify @hours) + ':' + (stringify @minutes) + ':' + (stringify @seconds)
  end

  def quantify value
    if (value > 3600)
      @hours = value/3600
      value = value - 3600 * @hours
    elsif (value > 60)
      @minutes = value/60
      value = value - 60 * @minutes
    else 
      @seconds = value
      value = value - @seconds
    end
    
    if (value > 0) 
      quantify (value)
    end
  end

  def stringify value
    if (value.to_s. length == 1)
      return '0' + value.to_s
    else
      return value.to_s
    end
  end

end
