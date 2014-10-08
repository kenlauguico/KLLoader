KLLoader
===
Make just about any UIView load with this simple extension.

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
