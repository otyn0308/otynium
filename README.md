# otynium
vim colorscheme

## install

```
$ git clone https://github.com/otyn0308/otynium.git
:!echo $VIMRUNTIME
$ cd ~/otynium/colors
$ sudo cp otynium.vim /usr/share/vim/vim81/colors
```
  
コピー先は ```:!echo $VIMRUNTIME```で出てきた場所の```/colors```ってところ．
  
これをやったら.vimrcに
```colors otynium```
と書き足す．  

ここでいう /usr/share/vim/vim81 は `:!echo $VIMRUNTIME` で出てきたやつ  
自分用メモなので雑です．
