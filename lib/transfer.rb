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
      if self.valid? && @sender.balance > @amount
         @receiver.balance += @amount
         @sender.balance -= amount
         @status = "complete"
      else
        "Transaction rejected. Please check your account balance."
      binding.pry
     when "complete"
         "Transaction rejected. Please check your account balance."
     end
  end







end
