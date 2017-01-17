  a="aa1"
  case $a in
  "aa"*)
	echo ${a#"aa"}
      ;;
  *)
      echo "null"
      ;;
  esac
  
