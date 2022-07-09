# vim-portal-aim
Shoot the vim-portal

![vim-portal-aim](https://user-images.githubusercontent.com/6848636/178097460-70f1d553-2105-4893-8754-b139a242f60c.gif)

# Install
```vim
call dein#install('thinca/vim-portal')
call dein#install('utubo/vim-portal-aim')
" Recommended
call dein#add('easymotion/vim-easymotion')

nnoremap <Leader>pr PortalAim<CR>
```

# Require
[vim-portal](https://github.com/thinca/vim-portal)

# Usage
```vim
PortalReady blue
PortalReady orange
" Switch blue <-> orange automatically
PortalReady
```

and move the cursor.

The portal will be set up instead of move the cursor.

# LICENSE
Author : utubo
License: zlib License
