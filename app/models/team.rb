class Team < ActiveRecord::Base
  has_many :series
  
  def played_against
    opponents = []
    all_series = Series.all
    all_series.each_with_object(opponents) do |series, opponents|
      if series.winner_id == self.id
        opponents << series.loser_id
      elsif series.loser_id == self.id
        opponents << series.winner_id
      end
    end
    opponents
  end

end
