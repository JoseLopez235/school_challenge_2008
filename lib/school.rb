class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @time = @start_time.to_i + @hours_in_school_day
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    return "#{@time}:00"
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    names = []
    @student_names.each do |student|
      names << student.capitalize
    end
    names
  end

  def convert_end_time_to_clock_time
    time = @time - 12
    return "#{time}:00"
  end
end
