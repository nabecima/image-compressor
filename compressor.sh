for f in `\find ./images -maxdepth 1 -type f `; do

  # PNG
  if [ `basename "$f" | grep '.png'` ]; then
    pngquant --force --ext .png 256 "$f"

  # JPG
  elif [ `basename "$f" | grep '.jpg'` ]; then
    jpegoptim --strip-all --max=100 "$f"

  # JPEG
  elif [ `basename "$f" | grep '.jpeg'` ]; then
    jpegoptim --strip-all --max=100 "$f"
  fi
done