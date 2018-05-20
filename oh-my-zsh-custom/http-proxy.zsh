function proxy(){
  if [ -z "$1" ]
  then
    echo missing port param!
  else
    export http_proxy="http://127.0.0.1:$1";
    export https_proxy="http://127.0.0.1:$1";
    echo "Done"
  fi
}

function unproxy(){
  unset http_proxy
  unset https_proxy
  echo "Done"
}
