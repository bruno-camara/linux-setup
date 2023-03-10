#!/bin/bash
# script to generate GPG key to sign commits in GitHub

gpg --full-generate-key

#min key size to GitHub = 4096 bits

# list GPG keys
GPGID=$(gpg --list-secret-keys --keyid-format=long | awk -F'/' '{print $2}' | awk 'NR==3{print $1}')

echo -e 'GPG key: '$GPGID'\n'

# prints the GPG key ID, in ASCII armor format, ready to copy and paste in GitHub
echo -e 'Paste the code below in github\n'

gpg --armor --export $GPGID
