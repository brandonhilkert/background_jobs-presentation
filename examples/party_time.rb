require "celluloid"

class PartyTime
  include ::Celluloid
  attr_reader :status

  def initialize(status = nil)
    @status = status || "partying"
  end

  def busted
    @status = "busted"
  end

  def restart
    sleep 3
    @status = "partying"
  end
end
