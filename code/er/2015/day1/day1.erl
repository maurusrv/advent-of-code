
-module(day1).
-export([get_floor/1, get_position/1, get_position_v2/1]).


% Function-level pattern matching!
get_floor(Instruction) ->
  get_floor(Instruction, 0).

get_floor(Instruction, CurrentFloor) ->
  lists:foldl(
    fun(Paren, Floor) -> 
      case Paren of
        $( -> Floor + 1;
        $) -> Floor - 1;
        _ -> Floor
      end
  end, CurrentFloor, Instruction).



get_position(Instruction) ->
  {_, Position} = lists:foldl(
    fun(Index, {CurrentFloor, Position}) ->
      if
        CurrentFloor == -1 -> {CurrentFloor, Position};
        true ->
          Floor = get_floor(string:substr(Instruction, 1, Index)),
          case Floor of
            -1 -> {Floor, Index};
            _ -> {Floor, Position}
          end
      end
    end, {0, 0}, lists:seq(1, length(Instruction))),
  Position.

get_position_v2(Instruction) ->
  {_, Position} = lists:foldl(
    fun(Index, {CurrentFloor, Position}) ->
      if
        CurrentFloor == -1 -> {CurrentFloor, Position};
        true ->
          Floor = get_floor(string:substr(Instruction, Index, 1), CurrentFloor),
          case Floor of
            -1 -> {Floor, Index};
            _ -> {Floor, Position}
          end
      end
    end, {0, 0}, lists:seq(1, length(Instruction))),
  Position.



