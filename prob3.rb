class User
  def username=(value)
    if value.nil? || value.empty?
      raise ArgumentError, "Username cannot be empty or nil"
    else
      @username = value
    end
  end

  def username
    @username
  end
end

user = User.new

begin
  user.username = "john_doe"
  puts "Username set successfully: #{user.username}"
rescue ArgumentError => e
  puts "Error: #{e.message}"
end

begin
  user.username = ""
  puts "Username set successfully: #{user.username}"
rescue ArgumentError => e
  puts "Error: #{e.message}"
end

begin
  user.username = nil
  puts "Username set successfully: #{user.username}"
rescue ArgumentError => e
  puts "Error: #{e.message}"
end
