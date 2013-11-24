class RankingsController < ApplicationController
  def index
    @rankings = [ Ranking.new("Teams", Team.all.reject{|t| t.solo? }),
                  Ranking.new("Single", Team.all.select{|t| t.solo? }),
                  Ranking.new("Overall", Team.all)
                ]
  end
end
