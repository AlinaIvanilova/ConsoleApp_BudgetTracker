
class BudgetManager
  def initialize
    @transactions = []
    @next_id = 1
  end

  def add_transaction(type:, amount:, category:, date: Time.now)
    transaction = Transaction.new(
      id: @next_id,
      type: type,
      amount: amount,
      category: category,
      date: date
    )
    @transactions << transaction
    @next_id += 1
    transaction
  end

  def all_transactions
    @transactions
  end
end

