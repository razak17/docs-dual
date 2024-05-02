d4394a381ca70336aa72dfffba5360589644b1f3

curl \
  -F "user=d4394a381ca70336aa72dfffba5360589644b1f3" \
  -F "files=@file.zip" \
  $(curl http://nitroflare.com/plugins/fileupload/getServer)
