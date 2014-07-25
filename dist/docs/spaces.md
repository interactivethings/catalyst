# Spaces

> Instead of having fixed margins and paddings in the grid layout, Catalyst provides spacing classes. These allow you to space components right in your layout. Using spaces will help to keep your UI’s white space harmonious, and your stylesheets clean. And most importantly your components flexible because they don't (and shouldn't) have to define outer margins to put space between themselves and others. Of course spaces are responsive too.

## Padding Classes

`([viewport size]) + p + [position] + [size]`

Padding classes, if not preceeded by viewport size prefix (`s-`, `m-`, `l-`), start with a `p` that stands for padding. They feature position variable in the middle (`t` for top, `r` for right, `b` for bottom, `l` for left) and size variable suffix (`n`, `x`, `s`, `m`, `l`, `h`). Here are only some example combinations:

* `plx` — padding left x-small
* `prs` — padding right small
* `pts` — padding top small
* `pbm` — padding bottom medium
* `pvl` — padding vertical large
* `phh` — padding horizontal huge
* `pan` — padding all none

## Margin classes

`([viewport size]) + m + [position] + [size]`

Margin classes, if not preceeded by viewport size prefix (`s-`, `m-`, `l-`), start with a `m` that stands for margin. They feature position variable in the middle (`t` for top, `r` for right, `b` for bottom, `l` for left) and size variable suffix (`n`, `x`, `s`, `m`, `l`, `h`). Here are only some example combinations:

* `mlx` — margin left x-small
* `mrs` — margin right small
* `mts` — margin top small
* `mbm` — margin bottom medium
* `mvl` — margin vertical large
* `mhh` — margin horizontal huge
* `man` — margin all none

