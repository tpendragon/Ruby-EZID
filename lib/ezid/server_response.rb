module Ezid
  class ServerResponse
    attr_reader :response
    def initialize(response)
      @response = response
    end
    def errored?
      return @response.instance_of?(String) && @response.start_with?("bad request")
    end
    def to_str
      @response.to_s
    end
  end
end