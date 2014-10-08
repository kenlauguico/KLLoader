KLLoader
===
Make just about any UIView load with this simple category.

<p align="center">
  <img src="http://i.imgur.com/V6AEcLN.png" width="292" height="437" />
</p>

Usage
---
Import the header at the top of your file.

```
#import "UIView+KLLoader.h"
```

Tell a UIVIew to start loading.

```
[self.button kl_showLoader];
```

When loading has completed, dismiss the loader.

```
[self.button kl_dismissLoader];
```

That's it!

Todo
---
* Check UIView class type to better position activity view.
* Support for dark backgrounds
