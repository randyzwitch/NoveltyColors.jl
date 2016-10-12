---

layout: minimal
title: Vega.jl - A Julia package for generating visualizations using Vega

---

# Michiyo

[Palettes](http://goboiano.com/news/5251-ghibli%2527s-legendary-color-designer-michiyo-yasuda-passes-away-at-77) derived in tribute to Michiyo Yasuda, the iconic color designer for Studio Ghibli. Colors were chosen using [ColorCube](https://github.com/pixelogik/ColorCube) applied to selected video stills and don't represent any "official" published color scheme.

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Colors</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Mononoke1</td>
      <td><div id="Mononoke1"></div></td>
    </tr>
    <tr>
      <td>Mononoke2</td>
      <td><div id="Mononoke2"></div></td>
    </tr>
    <tr>
      <td>Mononoke3</td>
      <td><div id="Mononoke3"></div></td>
    </tr>
    <tr>
      <td>Nausicaa1</td>
      <td><div id="Nausicaa1"></div></td>
    </tr>
    <tr>
      <td>Nausicaa2</td>
      <td><div id="Nausicaa2"></div></td>
    </tr>
    <tr>
      <td>Nausicaa3</td>
      <td><div id="Nausicaa3"></div></td>
    </tr>
    <tr>
      <td>Totoro1</td>
      <td><div id="Totoro1"></div></td>
    </tr>
    <tr>
      <td>Totoro2</td>
      <td><div id="Totoro2"></div></td>
    </tr>
    <tr>
      <td>Totoro3</td>
      <td><div id="Totoro3"></div></td>
    </tr>
    <tr>
      <td>WindRise1</td>
      <td><div id="WindRise1"></div></td>
    </tr>
    <tr>
      <td>WindRise2</td>
      <td><div id="WindRise2"></div></td>
    </tr>
    <tr>
      <td>WindRise3</td>
      <td><div id="WindRise3"></div></td>
    </tr>

  </tbody>
</table>

<div>
      <script type="text/javascript">

      // parse a spec and create a visualization view
      function parse(divid, palette) {

        spec = colorchip(palette[divid], 50, 400)
        vg.parse.spec(spec, function(chart) { chart({el:"#" + divid}).update(); });
      }

      var acw;
      $.getJSON("/NoveltyColors.jl/javascripts/michiyo.json", function(json) {
          michiyo = json;
      })
      .done(function(json) {

                for(var i = 0; i < Object.keys(michiyo).length; i++){
                  parse(Object.keys(michiyo)[i], michiyo);
                }
      });

    </script>
<div>
