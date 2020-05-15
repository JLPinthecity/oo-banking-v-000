require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    case @status
    when "pending"
      if self.valid?
         @receiver.balance +=  @sender.balance - self.amount
         @sender.balance = @sender.balance - self.amount
         @status = "complete"
      else
        "Transaction rejected. Please check your account balance."
      end
      binding.pry
     when "complete"






    end
  end

#sender has to have


end
