---

layout: minimal
title: Vega.jl - A Julia package for generating visualizations using Vega

---

# ACW - 5 Colors

[Palettes](https://color.adobe.com/explore/most-popular/?time=all) derived from the top 25 most popular palettes (at the time of development) from the [Adobe Color Wheel](https://color.adobe.com/explore/most-popular/?time=all).

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Colors</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>SandyStoneBeach</td>
      <td><div id="SandyStoneBeach"></div></td>
    </tr>
    <tr>
      <td>Firenze</td>
      <td><div id="Firenze"></div></td>
    </tr>
    <tr>
      <td>NeutralBlue</td>
      <td><div id="NeutralBlue"></div></td>
    </tr>
    <tr>
      <td>Phaedra</td>
      <td><div id="Phaedra"></div></td>
    </tr>
    <tr>
      <td>HoneyPot</td>
      <td><div id="HoneyPot"></div></td>
    </tr>
    <tr>
      <td>1944Mustang</td>
      <td><div id="Mustang"></div></td>
    </tr>
    <tr>
      <td>FlatUI</td>
      <td><div id="FlatUI"></div></td>
    </tr>
    <tr>
      <td>VitaminC</td>
      <td><div id="VitaminC"></div></td>
    </tr>
    <tr>
      <td>SeaWolf</td>
      <td><div id="SeaWolf"></div></td>
    </tr>
    <tr>
      <td>CherryCheesecake</td>
      <td><div id="CherryCheesecake"></div></td>
    </tr>
    <tr>
      <td>Watermelon</td>
      <td><div id="Watermelon"></div></td>
    </tr>
    <tr>
      <td>CircusIII</td>
      <td><div id="CircusIII"></div></td>
    </tr>
    <tr>
      <td>TechOffice</td>
      <td><div id="TechOffice"></div></td>
    </tr>
    <tr>
      <td>ZenAndTea</td>
      <td><div id="ZenAndTea"></div></td>
    </tr>
    <tr>
      <td>CS04</td>
      <td><div id="CS04"></div></td>
    </tr>
    <tr>
      <td>VintageRL</td>
      <td><div id="VintageRL"></div></td>
    </tr>
    <tr>
      <td>JapaneseGarden</td>
      <td><div id="JapaneseGarden"></div></td>
    </tr>
    <tr>
      <td>OrangeOnGray</td>
      <td><div id="OrangeOnGray"></div></td>
    </tr>
    <tr>
      <td>FriendsAndFoes</td>
      <td><div id="FriendsAndFoes"></div></td>
    </tr>
    <tr>
      <td>GrannySmithApple</td>
      <td><div id="GrannySmithApple"></div></td>
    </tr>
    <tr>
      <td>PearLemonFizz</td>
      <td><div id="PearLemonFizz"></div></td>
    </tr>
    <tr>
      <td>DustyPetrol</td>
      <td><div id="DustyPetrol"></div></td>
    </tr>
    <tr>
      <td>TimesChanging</td>
      <td><div id="TimesChanging"></div></td>
    </tr>
    <tr>
      <td>OceanSunset</td>
      <td><div id="OceanSunset"></div></td>
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
      $.getJSON("http://randyzwitch.github.io/NoveltyColors.jl/javascripts/acw.json", function(json) {
          acw = json;
      })
      .done(function(json) {

                for(var i = 0; i < Object.keys(acw).length; i++){
                  parse(Object.keys(acw)[i], acw);
                }
      });

    </script>
<div>