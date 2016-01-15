---

layout: minimal
title: Vega.jl - A Julia package for generating visualizations using Vega

---

# Beyonce - 14 Colors

[Palette](https://gist.github.com/dill/fb75131e618c52564fc9) copied from [beyonce R package](https://github.com/dill/beyonce) by DL Miller, based on the collection shown at [http://beyoncepalettes.tumblr.com/](http://beyoncepalettes.tumblr.com/). The Beyonce palettes are labeled based on number of colors in the palette, then sorted lexographically, a deviation from the ordering in the R package.

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Colors</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>14a</td>
      <td><div id="b14a"></div></td>
    </tr>
        <tr>
      <td>14b</td>
      <td><div id="b14b"></div></td>
    </tr>
        <tr>
      <td>14c</td>
      <td><div id="b14c"></div></td>
    </tr>
        <tr>
      <td>14d</td>
      <td><div id="b14d"></div></td>
    </tr>
        <tr>
      <td>14e</td>
      <td><div id="b14e"></div></td>
    </tr>
  </tbody>
</table>

<div>
      <script type="text/javascript">

      // parse a spec and create a visualization view
      function parse(divid, palette) {

        spec = colorchip(palette[divid], 50, 600)
        vg.parse.spec(spec, function(chart) { chart({el:"#" + divid}).update(); });
      }

      var bey;
      $.getJSON("http://randyzwitch.github.io/NoveltyColors.jl/javascripts/beyonce.json", function(json) {
          bey = json;
      })
      .done(function(json) {

                for(var i = 0; i < Object.keys(bey).length; i++){
                  parse(Object.keys(bey)[i], bey);
                }
      });

    </script>
</div>