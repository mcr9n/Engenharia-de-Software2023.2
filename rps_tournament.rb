class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
def rps_game_winner?(list)
    raise WrongNumberOfPlayersError unless list.length == 2
    list.each do |player|
        raise NoSuchStrategyError unless player[1] =~ /[RPS]/
    end
    if list[0][1] == list[1][1]
        return list[0]
    elsif list[0][1] == "R" && list[1][1] == "S"
        return list[0]
    elsif list[0][1] == "S" && list[1][1] == "P"
        return list[0]
    elsif list[0][1] == "P" && list[1][1] == "R"
        return list[0]
    else
        return list[1]
    end


end

def rps_tournament_winner?(list_of_tournaments)
    list_of_tournaments.each do |tournament|
        if tournament[0][0].is_a?(String)
            return rps_game_winner?(tournament)
        else
            return rps_tournament_winner?(tournament)
        end
    end

end

puts rps_tournament_winner?([
    [
     [ ["Kristen", "P"], ["Dave", "S"] ],
     [ ["Richard", "R"], ["Michael", "S"] ],
    ],
    [
     [ ["Allen", "S"], ["Omer", "P"] ],
     [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]
    )