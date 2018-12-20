function scppath
  echo (whoami)"@"(hostname)":"(realpath $argv);
end
