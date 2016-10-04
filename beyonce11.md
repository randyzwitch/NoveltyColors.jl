---

layout: minimal
title: Vega.jl - A Julia package for generating visualizations using Vega

---

# Beyonce - 11 Colors

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
      <td>11a</td>
      <td><div id="b11a"></div></td>
    </tr>
    <tr>
      <td>11b</td>
      <td><div id="b11b"></div></td>
    </tr>
        <tr>
      <td>11c</td>
      <td><div id="b11c"></div></td>
    </tr>
            <tr>
      <td>11d</td>
      <td><div id="b11d"></div></td>
    </tr>
            <tr>
      <td>11e</td>
      <td><div id="b11e"></div></td>
    </tr>
            <tr>
      <td>11f</td>
      <td><div id="b11f"></div></td>
    </tr>
            <tr>
      <td>11g</td>
      <td><div id="b11g"></div></td>
    </tr>
            <tr>
      <td>11h</td>
      <td><div id="b11h"></div></td>
    </tr>
            <tr>
      <td>11i</td>
      <td><div id="b11i"></div></td>
    </tr>
            <tr>
      <td>11j</td>
      <td><div id="b11j"></div></td>
    </tr>
            <tr>
      <td>11k</td>
      <td><div id="b11k"></div></td>
    </tr>
            <tr>
      <td>11l</td>
      <td><div id="b11l"></div></td>
    </tr>
            <tr>
      <td>11m</td>
      <td><div id="b11m"></div></td>
    </tr>
            <tr>
      <td>11n</td>
      <td><div id="b11n"></div></td>
    </tr>
            <tr>
      <td>11o</td>
      <td><div id="b11o"></div></td>
    </tr>
            <tr>
      <td>11p</td>
      <td><div id="b11p"></div></td>
    </tr>
            <tr>
      <td>11q</td>
      <td><div id="b11q"></div></td>
    </tr>
            <tr>
      <td>11r</td>
      <td><div id="b11r"></div></td>
    </tr>
            <tr>
      <td>11s</td>
      <td><div id="b11s"></div></td>
    </tr>
  </tbody>
</table>

<div>
      <script type="text/javascript">

      // parse a spec and create a visualization view
      function parse(divid, palette) {

        spec = colorchip(palette[divid], 50, 450)
        vg.parse.spec(spec, function(chart) { chart({el:"#" + divid}).update(); });
      }

      var bey;
      $.getJSON("/javascripts/beyonce.json", function(json) {
          bey = json;
      })
      .done(function(json) {

                for(var i = 0; i < Object.keys(bey).length; i++){
                  parse(Object.keys(bey)[i], bey);
                }
      });

    </script>
</div>