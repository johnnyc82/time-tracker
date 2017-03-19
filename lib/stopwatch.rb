class Stopwatch
 
  def initialize()
    @start = Time.now
  end

  def elapsed_time
    now = Time.now
    elapsed = now - @start
    puts 'Started: ' + @start.to_s
    puts 'Now: ' + now.to_s
    puts 'Elapsed time: ' +  elapsed.to_s + ' seconds'
    elapsed.to_s
  end

end

# ## Usage

s = Stopwatch.new
sleep(2)
puts s.elapsed_time

# ## Output
# # Started: Tue Sep 03 11:44:48 +0100 2013
# # Now: Tue Sep 03 11:44:50 +0100 2013
# # Elapsed time: 2.000997 seconds
# # 2.000997
