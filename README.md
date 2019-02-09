This script copies local files to a Kobo e-reader over SSH.

It requires SSH access to the e-reader, which can be added by installing [dropmeaword/kobo-aura-remote](https://github.com/dropmeaword/kobo-aura-remote).
It's recommended to configure passwordless SSH, otherwise you'll have to type in the SSH password two times when copying.

You can set it up with a folder watcher (e.g. watch, inotifywait, fswatch) to start syncing whenever you add files to a certain directory.  
Unfortunately it still requires interaction with the e-reader during the sync (you'll have to wake the device for wifi and click 'connect' on the pop-up).


