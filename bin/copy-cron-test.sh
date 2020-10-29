#!/usr/bin/env sh

declare recipient=alkacirg@protonmail.com

copyDir() {
  # copy directory
  # cp -R ~/Downloads/test/ ~/QVO1TB/screen-recordings/

  #
  find ~/Downloads/test/ -name '*.md' -print0 | while IFS= read -r -d '' file
  do
    echo "Copying file $file"
    cp $file ~/QVO1TB/screen-recordings/test/
  done

  # traverse and encrypt markdown files
  find ~/QVO1TB/screen-recordings/test/ -name '*.md' -print0 | while IFS= read -r -d '' file
  do
    echo "Encrypting file $file"
    # encrypt file
    gpg --batch --yes -r $recipient --output $file.gpg --encrypt $file
  done

  # remove markdown files
  find ~/QVO1TB/screen-recordings/test/ -type f -name '*.md' -exec rm '{}' +

  # push encrypted files to git
}

copyDir
