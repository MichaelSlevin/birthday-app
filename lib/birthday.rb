require 'date'

class Birthday
  attr_reader :date, :today

  def initialize(date, today=DateTime.now)
    date = DateTime.strptime(date, '%Y-%m-%d')
    @today = today
    @date = Date.new(@today.year,date.month,date.day)
    @date = @date.next_year if @date < @today
  end

  def today?
    @today == @date
  end

  def days_until_birthday
    (@date - @today).to_i
  end

end
