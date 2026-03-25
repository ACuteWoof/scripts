#!/bin/sh

cd ~/.password-store/ && find . -path "*gpg" | sed -e "s/.gpg//" -e 's|./||' | dmenu -i -p 'Find file:' -l 10 | xargs -I @ pass @ | xsel -i -b
