class Appliance
  def show_info
    puts "This is a household appliance."
  end
end

class Refrigerator < Appliance
  def unique_info
    puts "This is a refrigerator, used for keeping food cold."
  end
end

class Microwave < Appliance
  def unique_info
    puts "This is a microwave, used for heating food quickly."
  end
end

refrigerator = Refrigerator.new
microwave = Microwave.new

refrigerator.show_info
microwave.show_info

refrigerator.unique_info
microwave.unique_info
