module Payments
  class Invoice
    def initialize(number)
      @number = number
    end

    def display_number
      puts "Invoice number: #{@number}"
    end
  end

  class Receipt
    def initialize(number)
      @number = number
    end

    def display_number
      puts "Receipt number: #{@number}"
    end
  end
end

invoice = Payments::Invoice.new("INV123")
receipt = Payments::Receipt.new("RCPT456")

invoice.display_number
receipt.display_number
