class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
def rps_game_winner?(list)
    ###
    #In ruby, the expression raise unless is used to raise an exception
    #unless certain condition is met. It is essentially a way to raise an exception
    #if a condition is not true. This can be useful for error handling and ensuring
    #that your code behaves as expected in exceptional cases.
    ###
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
puts rps_game_winner?( [ [ "Kristen", "P" ], [ "Pam", "S" ] ] )