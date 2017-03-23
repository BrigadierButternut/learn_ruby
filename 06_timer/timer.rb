class Timer
  #write your code here
  attr_accessor :timer
  attr_accessor :seconds
  #methods included in this exercise: "seconds", "time_string"

  def seconds
    #initialize to 0 seconds
    @seconds = 0
  end

  def seconds=(new_time)
    @seconds = new_time
  end

  def time_string
    total_seconds = @seconds
    #there's 60 seconds in one minute and 60 minutes in one hour; when in excess of that, the
    #timer should add one unit to the next order of magnitude and restart the original order to one
    #whoo boy
    #3600 seconds = 1 hour
    hours = total_seconds / 3600
    total_seconds = total_seconds % 3600
      if hours < 10
        hours = "0" + hours.to_s
      else
        hours.to_s
      end #end of if statement
    #60 seconds = 1 minutes
    minutes = total_seconds / 60
    total_seconds = total_seconds % 60
      if minutes < 10
        minutes = "0" + minutes.to_s
      else
        minutes.to_s
      end #end of if statement
    #remaining seconds may be filed under the "seconds" variable
    seconds = total_seconds
    if seconds < 10
      seconds = "0" + seconds.to_s
    else
      seconds.to_s
    end #end of if statement
    #all that's left is to join the time variables as a string
    display_time = "#{hours}" + ":" + "#{minutes}" + ":" + "#{seconds}"
  end #end of time_string definition

end
