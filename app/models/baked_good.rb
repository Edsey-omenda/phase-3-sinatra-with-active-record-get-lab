class BakedGood < ActiveRecord::Base
  # add association macro here
  belongs_to   :bakery

  def self.by_price
    self.all.order(price: :desc)
  end

  def self.most_expensive
    # self.all.order(price: :desc).first
    self.all.order(price: :desc).limit(1)
  end
end
