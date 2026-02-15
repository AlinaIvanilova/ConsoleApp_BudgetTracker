
class Transaction
  attr_reader :id, :created_at
  attr_accessor :date, :type, :amount, :category
  def initialize(id:, date: Time.now, type:, amount:, category:)
    @id = id
    @date = date
    @type = type
    @amount = amount
    @category = category
    @created_at = Time.now()
  end

  def to_h
    {
      id: @id,
      date: @date,
      type: @type,
      amount: @amount,
      category: @category,
      created_at: @created_at
    }
  end
end