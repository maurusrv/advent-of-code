#!/usr/bin/env escript
%% -*- erlang -*-

main(_) ->
  TestDir = "./",  % Change this to the path of your test directory
  Files = find_test_files(TestDir),
  code:add_pathz(TestDir),
  run_tests(Files),
  ok = halt(0).  % Exit with a success code

find_test_files(Dir) ->
  filelib:fold_files(
    Dir,
    ".erl$",
    true,  % Recursively search subdirectories
    fun(File, Acc) ->
      case filelib:is_file(File) of
        true ->
          [File | Acc];
        false ->
          Acc
      end
    end,
    []
  ).

% get_file_path(File) ->
%   LastIndex = string:rchr(File, $/),
%   string:substr(File, 1, LastIndex).
  

run_tests(Files) ->
  lists:foreach(
    fun(ModuleFile) ->
      ModuleBase = filename:basename(ModuleFile, ".erl"),
      Module = list_to_atom(ModuleBase),
      compile:file(ModuleFile, [outdir, filename:dirname(ModuleFile)]),
      code:load_file(Module),
      case string:str(ModuleBase, "_test") of
         0 -> io:format("");
         _ -> eunit:test(Module, [verbose])
      end
    end,
    Files).
