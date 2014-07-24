# Catalyst

## Introduction

Catalyst is a CSS framework for building web-based application frontends. It has been built with the principle of mobile-first in mind. Each grid, space,visibility and utility class is responsive and, again, mobile first—allowing us to totally alter layout properties assigned to an element per each of the predefined breakpoints.

Catalyst is a companion product to Catalog, our frontend style guide template.

Cat•a•lyst—a substance that increases the rate of a chemical reaction without itself undergoing any permanent chemical change. Such is the premise of this CSS framework—help you grow your front-end organisms and ecosystems without need of much mutation. Catalyst is already super-flexi out of the probe. It’s good chemistry.

### Mobile First

Catalyst has been built with the principle of mobile-first in mind. Each <a href="grid-system.html">grid</a>, <a href="space-helpers.html">space</a>, <a href="visibility-helpers.html">visibility</a> and <a href="utility-helpers.html">utility</a> class is responsive and, again, mobile first—allowing you to totally alter layout properties assigned to an element per each of the predefined breakpoints.

Assuming you’ll be first laying out things for mobile, you will be using Catalyst classes with <code>s-</code> prefix. Tablet and destkop alterations will require <code>m-</code> and <code>l-</code> prefixes respectively. Prefixes come in your favorite t-shirt sizes: <code>s-</code> stands for small, <code>m-</code> for medium and <code>l-</code> for large.

### Desktop Friendly by Default

If for some reason you’re building a UI that is not meant to be responsive, you’re sorted as well. There are two ways to proceed then: either you’ll use only <code>s-</code> prefixed classes or ditch breakpoint prefixes altogether.

The advantage of the first approach is that, if at some point you decide to make your app responsive, you already have mobile layout set and you just need to add <code>m-</code> and <code>l-</code> variants if necessary. The other approach is more conservative and assumes you’ll be doing stuff for destktop forever. You don’t want that.

## Getting started

The current version is %VERSION%

Install with npm:

    npm install --save interactivethings/catalyst.git#%VERSION%

Install with Bower:

    bower install --save https://github.com/interactivethings/catalyst.git#%VERSION%


## Overview

### Reset <span>_reset.scss</span>

Catalyst comes with CSS reset based on <a href="http://meyerweb.com/eric/tools/css/reset/">Eric Meyer’s reset</a>. It is here to guarante cross-browser and cross-device clean slate for your UI by stripping all browsers’ default styles. This way you can be sure that each HTML tag will look exactly the same independently from the rendering engine you’re developing for.

### Grid System <span>_grid-system.scss</span>

Catalyst’s responsive grid system, with its core built on the principal of proportions rather than 12 or 16 modules, offers greater flexibility than any other framework. Being based on parts of a whole ranging from 2 to 6 modules it allows for creation of both: odd and even number of columns, and painless nesting.

### Space Helpers <span>_space-helpers.scss</span>

As Catalyst’s grid system comes with no unnecessay default paddings or margins, should you find yourself in need of applying some extra spacing around *any* element, space helpers will become your best friends. Padding and margin CSS classes defined with a set of handy SASS variables will help to keep your UI’s white space harmonious, and your stylesheets clean. And yes, space helpers are responsive too.

### Visibility Helpers <span>_visibility-helpers.scss</span>

Should you wish to show or hide a bit of content for a particular device or screen orientation, Catalyst makes it easy to achieve this with Visibility Helper classes. Hiding a block, a div or even a single character on mobile and showing it on larger display (or the other way around) will be as simple as giving that element a class.

### Utility Helpers <span>_utility-helpers.scss</span>

Utility helpers are text alignment and box model (clearfix, float) classes that, by principal, can be applied to any tag. Should you wish to float that button right only on large displays, or justify text of that paragraph only on tables—that’s your toolbox.
