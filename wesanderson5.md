---

layout: minimal
title: Vega.jl - A Julia package for generating visualizations using Vega

---

# Wes Anderson - 5 Colors

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
      <td>BottleRocket2</td>
      <td><div id="BottleRocket2"></div></td>
    </tr>
    <tr>
      <td>Cavalcanti1</td>
      <td><div id="Cavalcanti1"></div></td>
    </tr>
    <tr>
      <td>Darjeeling1</td>
      <td><div id="Darjeeling1"></div></td>
    </tr>
    <tr>
      <td>Darjeeling2</td>
      <td><div id="Darjeeling2"></div></td>
    </tr>
    <tr>
      <td>FantasticFox1</td>
      <td><div id="FantasticFox1"></div></td>
    </tr>
    <tr>
      <td>Moonrise3</td>
      <td><div id="Moonrise3"></div></td>
    </tr>
        <tr>
      <td>Royal2</td>
      <td><div id="Royal2"></div></td>
    </tr>
        <tr>
      <td>Rushmore1</td>
      <td><div id="Rushmore1"></div></td>
    </tr>
        <tr>
      <td>Zissou1</td>
      <td><div id="Zissou1"></div></td>
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
      $.getJSON("/javascripts/wesanderson.json", function(json) {
          wes = json;
      })
      .done(function(json) {

                for(var i = 0; i < Object.keys(wes).length; i++){
                  parse(Object.keys(wes)[i], wes);
                }
      });

    </script>
<div>