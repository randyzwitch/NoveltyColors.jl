---

layout: minimal
title: Vega.jl - A Julia package for generating visualizations using Vega

---

# Wes Anderson - 7 Colors

[Palette](https://github.com/karthik/wesanderson/blob/master/R/colors.R) copied verbatim from [wesanderson R package](https://github.com/karthik/wesanderson) by Karthik Ram (converted to JSON).

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Colors</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>BottleRocket1</td>
      <td><div id="BottleRocket1"></div></td>
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

      var wes;
      $.getJSON("/NoveltyColors.jl/javascripts/wesanderson.json", function(json) {
          wes = json;
      })
      .done(function(json) {

                for(var i = 0; i < Object.keys(wes).length; i++){
                  parse(Object.keys(wes)[i], wes);
                }
      });

    </script>
<div>
