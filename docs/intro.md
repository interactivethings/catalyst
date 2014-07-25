# Catalyst

> Catalyst helps you create solid responsive CSS layouts. Each grid, space, visibility and utility class is responsive, allowing you to adjust your layouts to all devices, from smartphones to desktop computers. You can use the completely dependency free version of Catalyst or configure it to meet your project's needs.

Catalyst works best when you start with a mobile-first approach, creating a layout for small screens first. You'll be using Catalyst CSS classes with the `s-` prefix to do that. Build your layout up from there to work on tablet- (`m-`) and desktop-sized (`l-`) screens. If you need different breakpoints than `s`mall, `m`edium and `l`arge you're free to configure your own.

If for some reason you’re building a UI that is not meant to be responsive, Catalyst has your back as well. There are two ways to proceed: either you’ll use only `s-` prefixed classes or you don't use any prefixes at all. The advantage of the first approach is that if, at some point, you decide to make your app responsive, you already have a mobile layout ready and can start adding layout adjustments. The second approach is more conservative and assumes that you’ll be doing stuff for desktop-sized devices forever. You don’t want that.

## Getting started

Catalyst works best when you integrate it in your [Sass](http://sass-lang.com/) project. But if you want to get started quickly or for some reason can't work with Sass, just use one of these ready-to-use versions:

* Current version (%VERSION%): [download](http://interactivethings.github.io/catalyst/%VERSION%/catalyst.css)
* Without CSS Reset (provide your own!): [download](http://interactivethings.github.io/catalyst/%VERSION%/catalyst-no-reset.css)
* Grid only: [download](http://interactivethings.github.io/catalyst/%VERSION%/catalyst-grid.css)
* Spaces only: [download](http://interactivethings.github.io/catalyst/%VERSION%/catalyst-spaces.css)

### Install with npm

```code
npm install --save interactivethings/catalyst.git#%VERSION%
```

### Install with Bower

```code
bower install --save https://github.com/interactivethings/catalyst.git#%VERSION%
```

### Source code
The source code is available on [Github](https://github.com/interactivethings/catalyst).

## Overview

### Reset `_reset.scss`

Catalyst comes with a CSS reset based on <a href="http://meyerweb.com/eric/tools/css/reset/">Eric Meyer’s reset</a>. It is here to guarante a cross-browser and cross-device clean slate for your UI by stripping all the browser’s default styles. This way you can be sure that each HTML tag will look exactly how you style it. This reset also sets `box-sizing: border-box` by default. If you can't work with that, bring your own reset.

### Grid `_grid.scss`

Catalyst’s responsive grid system is built around proportions rather than a fixed amount of columns. This offers much greater flexibility than other frameworks. Being based on parts of a whole ranging from 1 to 6 modules it allows for creation of both: odd and even number of columns, and painless nesting. If you need different proportions, you can configure them easily.

Catalyst's grid columns have neither paddings nor margins. In situations where you need a gutter between columns, a guttered grid is available.

[&rarr; Grid documentation](#/grid)

### Spaces `_spaces.scss`

Instead of having fixed margins and paddings in the grid layout, Catalyst provides spacing classes. These allow you to space components right in your layout. Using spaces will help to keep your UI’s white space harmonious, and your stylesheets clean. And most importantly your components flexible because they don't (and shouldn't) have to define outer margins to put space between themselves and others. Of course spaces are responsive too.

[&rarr; Spaces documentation](#/spaces)

### Visibility `_visibility.scss`

To hide a piece of content for a particular device size or screen orientation, Catalyst provides visibility classes. Hiding a block, a `div` or even a single character depending on screen size lets you provide an optimized experience.

[&rarr; Visibility documentation](#/visibility)

### Utilities `_utilities.scss`

Utilities are text alignment and box model classes that can be applied to any element. Should you wish to float that button right on small displays only or have that paragraph's text justified on large screens; that's in your toolbox.

[&rarr; Utilities documentation](#/utilities)

## Configuration

For the time being you just have to look through the Sass source code to see how to configure Catalyst. We plan to guide you through this in the future.

## More tools

Catalyst is a companion product to <a href="http://interactivethings.github.io/catalog/">Catalog</a>. Catalog helps you create beautiful living style guides of your HTML/CSS/JS components quickly and easily.
