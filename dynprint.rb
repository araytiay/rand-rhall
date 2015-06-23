class DynamicPrinter

  def initialize
    @name = "dprint"
  end

  def wait wait_time_ms
    time = Time.now
    while Time.now - time < wait_time
    end
  end
end
