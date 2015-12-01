class Series < ActiveRecord::Base
  has_many :teams
  def winner
    self.winner_id
  end
  def loser
    self.loser_id
  end
end
