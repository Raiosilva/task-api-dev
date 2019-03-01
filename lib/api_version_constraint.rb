class ApiVersionConstraint
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  #? retorna true or false
  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{@version}")
  end
end
