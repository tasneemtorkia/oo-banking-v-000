class Transfer
  attr_accessor :sender, :receiver, :amount, :status 
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = 'pending'
  end 
  
  def valid?
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction
    if sender.valid? && receiver.valid? && status == "pending"
      if amount < @sender.balance 
        @sender.balance -= amount 
        @receiver.balance += amount 
        @status = "complete"
      else
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end 
  end 
end 
  
  def reverse_transfer 
    if @status == "complete"
      @sender.balance += amount 
    
  end 
  
  if self.status == "complete"
+      self.sender.balance += amount
+      self.receiver.balance -= amount
+      self.status = "reversed"

end
