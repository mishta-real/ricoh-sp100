#!/usr/bin/env bash

printf "pbmtojbg (Jbigkit)\\t\\t[REQUIRED] : "
if [[ -x $(command -v pbmtojbg) ]]; then
  echo "Yes, version: $(pbmtojbg --help 2>&1 | head -1 | cut -d" " -f3)."
else
  echo "No."
fi

printf "identify (Imagemagick)\\t\\t[REQUIRED] : "
if [[ -x $(command -v identify) ]]; then
  echo "Yes, version: $(identify -version | head -1 | cut -d" " -f3-5)."
else
  echo "No."
fi

printf "gs (Ghostscript)\\t\\t[REQUIRED] : "
if [[ -x $(command -v gs) ]]; then
  echo "Yes, version: $(gs --version)."
else
  echo "No."
fi

printf "ps2write\\t\\t\\t[REQUIRED] : "
if [[ -n $(gs --help | grep ps2write) ]]; then
  echo "Yes."
else
  echo "No."
fi

printf "pbmraw\\t\\t\\t\\t[REQUIRED] : "
if [[ -n $(gs --help | grep pbmraw) ]]; then
  echo "Yes."
else
  echo "No."
fi

printf "inotifywait (Inotify-tools)\\t[optional] : "
if [[ -x $(command -v inotifywait) ]]; then
  echo "Yes, version: $(inotifywait --help | head -1 | cut -d" " -f2)."
else
  echo "No."
fi

exit 0
