---

layout: minimal
title: NoveltyColors.jl | Visme Palette

---

# Visme - 5 Colors

[Palettes](http://blog.visme.co/color-combinations/) derived from linked blog post "50 Beautiful Color Combinations".

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Colors</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>BlueSunset</td>
      <td><div id="BlueSunset"></div></td>
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
      $.getJSON("http://randyzwitch.github.io/NoveltyColors.jl/javascripts/visme.json", function(json) {
          visme = json;
      })
      .done(function(json) {

                for(var i = 0; i < Object.keys(visme).length; i++){
                  parse(Object.keys(visme)[i], visme);
                }
      });

    </script>
<div>