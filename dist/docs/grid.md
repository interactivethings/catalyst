# Grid

> Catalyst’s responsive grid system is built around proportions rather than a fixed amount of columns. This offers much greater flexibility than other frameworks. Being based on parts of a whole ranging from 1 to 6 modules it allows for creation of both: odd and even number of columns, and painless nesting. If you need different proportions, you can configure them easily.

Grid units span across parts of a `.group`. Think of the group as the width of your page, `.span-1of2` will create a column that fills half of the group. Easy. The syntax of a grid unit class stays always the same: `([viewport variable]-) + span- + [part]of[whole]`. The following are only a few class variations:

* `span-1of1` – unit that spans accross the whole parent container
* `span-1of2` – unit that spans accross the 1/2 of parent container
* `span-1of3` – unit that spans accross the 1/3 of parent container
* `span-1of4` – unit that spans accross the 1/4 of parent container
* `span-1of5` – unit that spans accross the 1/5 of parent container
* `span-1of6` – unit that spans accross the 1/6 of parent container
* `s-span-1of2` – unit that spans across half of the parent container on small and bigger devices
* `m-span-1of3` – unit that spans across 1/3 of the parent container on medium and bigger devices
* `s-span-1of1 l-span-3of4` – unit that spans across the entire parent container on small and medium devices and across 3/4 on large devices
* `m-s-span-1of1 m-span-3of5 l-span-4of6` – unit that spans accross the entire parent on small, 3/5 on medium and 4/6 on large devices


## Basics

```
<div class="group">
  <div class="span-1of4">Fixed span A</div>
  <div class="span-2of4">Fixed span B</div>
  <div class="span-1of4">Fixed span C</div>
</div>
```

```
<div class="group">
  <div class="s-span-1of6 m-span-3of6">Responsive span A</div>
  <div class="s-span-2of6 m-span-2of6">Responsive span B</div>
  <div class="s-span-3of6 m-span-1of6">Responsive span C</div>
</div>
```


## Gutter

```
<div class="gutter-s">
  <div class="group">
    <div class="span-1of3"><div class="bg"></div></div>
    <div class="span-1of3"><div class="bg"></div></div>
    <div class="span-1of3"><div class="bg"></div></div>
  </div>
</div>
```

```
<div class="s-gutter-s m-gutter-l">
  <div class="group">
    <div class="span-1of6"><div class="bg"></div></div>
    <div class="span-2of6"><div class="bg"></div></div>
    <div class="span-1of6"><div class="bg"></div></div>
    <div class="span-2of6"><div class="bg"></div></div>
  </div>
</div>
```

```
<div class="gutter-s">
  <div class="group">
    <div class="span-1of6"><div class="bg"></div></div>
    <div class="span-2of6">
      <div class="group">
        <div class="span-1of2">Child&nbsp;1</div>
        <div class="span-1of2">Child&nbsp;2</div>
      </div>
    </div>
    <div class="span-1of6"><div class="bg"></div></div>
    <div class="span-2of6"><div class="bg"></div></div>
  </div>
</div>
```


## Nesting

You can nest grid units indefinitely as long as you follow the `.group` &rarr; `.span-XofX` markup tree structure for each nest level.

```
<div class="group">
  <div class="span-1of3">A</div>
  <div class="span-2of3">B
    <div class="group">
      <div class="span-1of2">C
        <div class="group">
          <div class="span-1of2">E</div>
          <div class="span-1of2">F</div>
        </div>
      </div>
      <div class="span-1of2">D</div>
    </div>
  </div>
</div>
```


## Offsets

Offset modifiers allow to shift position of `span` units within one `group` to the right. Offset has impact on the unit to which modifier was applied and all units following it. Some possible offset modifiers:

* `offset-1of6`
* `offset-2of6`
* `offset-3of6`
* `offset-4of6`
* `offset-5of6`
* `s-offset-4of6`
* `m-offset-5of6`
* `m-offset-5of6 l-offset-1of6`


```
<div class="group">
  <div class="span-1of6 offset-2of6"></div>
  <div class="span-1of6 offset-2of6"></div>
</div>
```

```
<div class="group">
  <div class="s-span-1of3"></div>
  <div class="s-span-1of3 s-offset-1of3 m-offset-none l-offset-1of3"></div>
</div>
```


## Alignment

Centering and flow modifiers allow to set left-, right- and center-alignment property to a `span` unit within a group. It might come in handy – among many other cases – when, for example, you’d need a centered column that is not 100% wide. Alignment modifier classes work within breakpoints, therefore accept `s-`, `-m` and `l-` prefixes. All possible alignment modifiers:

* `center`
* `s-center`
* `m-center`
* `l-center`

* `flow-left`
* `s-flow-left`
* `m-flow-left`
* `l-flow-left`

* `flow-right`
* `s-flow-right`
* `m-flow-right`
* `l-flow-right`


```
<div class="group">
  <div class="span-1of4 center"></div>
</div>
```

```
<div class="group">
  <div class="span-1of2 l-center"></div>
</div>
```

```
<div class="group">
  <div class="span-3of4 center l-flow-left"></div>
</div>
```


## Push + pull

Push and pull modifiers can be used to visually invert position of `span` containers within a `group` while maintaining their position in the markup. Push and pull modifier classes work within breakpoints, therefore accept `s-`, `m-` and `l-` prefixes.

Push and pull modifiers must be used in pairs to shift `span` elements by the size of their neighbour in the `group`: `span-1of3 + span-2of3` can be altered to become `span-1of3.push-2of3 + span-2of3.pull-1of3`. The following are just a few possible combinations:

* `push-1of2`
* `s-push-1of2`
* `m-push-1of2`
* `l-push-1of2`

* `pull-1of2`
* `s-pull-1of2`
* `m-pull-1of2`
* `l-pull-1of2`


```
<div class="group">
  <div class="span-5of6 push-1of6">1</div>
  <div class="span-1of6 pull-5of6">2</div>
</div>
```

```
<div class="group">
  <div class="s-span-3of4 m-push-1of4">1</div>
  <div class="s-span-1of4 m-pull-3of4">2</div>
</div>
```
