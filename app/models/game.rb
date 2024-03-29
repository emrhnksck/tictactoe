class Game < ApplicationRecord
  before_validation(on: :create) do
    self.state = {
      0 => {0 => nil , 1 => nil , 2 => nil },
      1 => {0 => nil , 1 => nil , 2 => nil },
      2 => {0 => nil , 1 => nil , 2 => nil },
    }
    self.current_symbol = [:x, :o].sample #??
  end

  after_update_commit {broadcast_update}


  def [](row , col)
    state[row.to_s][col.to_s]
  end

  def move!(row, col)
      state[row.to_s][col.to_s] = current_symbol

  self.current_symbol = current_symbol == "x" ? "o" : "x"
  self.save!
  end
end
