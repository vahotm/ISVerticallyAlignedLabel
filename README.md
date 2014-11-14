ISVerticallyAlignedLabel
===============
ISVerticallyAlignedLabel is UILabel descendant with following features:
* vertical alignment;
* text insets.

Installation
---------------
Drag the `ISVerticallyAlignedLabel` folder into your project.

Usage
---------------
__Set vertical alignment:__

```objective-c
verticallyAlignedLabel.verticalAlignment = ISVerticalAlignmentTop;
```
There are three options available:
* `ISVerticalAlignmentTop`
* `ISVerticalAlignmentCenter`
* `ISVerticalAlignmentBottom`

__Set text insets:__

```objective-c
verticallyAlignedLabel.textInsets = UIEdgeInsetsMake(10, 10, 10, 10);
```

Requirements
---------------
iOS 6 with ARC

License
---------------
ISVerticallyAlignedLabel is available under the MIT license. See the LICENSE file for more info.