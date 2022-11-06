# Stay Focus

Inspired by Focus mode on iOS. Run the script to temporarily block  websites like Facebook and Instagram. You are not allowed to open these websites during focus mode.

### How to use the script?
```sh
# enter focus mode
sudo focus.sh

# leave focus mode
sudo focus.sh --off
```

### Customize blocking websites
Add other websites in end of the list. 
```sh
BLOCK_SITES="facebook.com instagram.com {other.distraction}"
```