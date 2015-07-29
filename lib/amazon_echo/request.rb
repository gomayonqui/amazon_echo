class AmazonEcho::Request
  def initialize(request={})
    @version  = request[:version]
    @session  = request[:session]
    @request  = request[:request]
  end
end
