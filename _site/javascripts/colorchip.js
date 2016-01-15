    //One giant constant object, to be modified with colorchip() function
    var rawspec = {
      "height": null,
      "padding": "auto",
      "signals": [
        {
          "name": "tooltip",
          "init": {},
          "streams": [
            {"type": "rect:mouseover","expr": "datum"},
            {"type": "rect:mouseout","expr": "{}"}
          ]
        }
      ],
      "marks": [
        {
          "properties": {
            "update": {
              "fillOpacity": {"value": 1},
              "strokeOpacity": {"value": 1}
            },
            "hover": {
              "fillOpacity": {"value": 0.9},
              "strokeOpacity": {"value": 0.9}
            },
            "enter": {
              "stroke": {"value": "white"},
              "x": {"field": "x","scale": "x"},
              "y2": {"field": "y2","scale": "y"},
              "strokeWidth": {"value": 2},
              "width": {"offset": -1,"scale": "x","band": true},
              "fill": {"field": "group","scale": "group"},
              "strokeOpacity": {"value": 1},
              "y": {"field": "y","scale": "y"}
            }
          },
          "from": {"data": "table"},
          "type": "rect"
        },
        {
          "type": "text",
          "properties": {
            "enter": {
              "align": {"value": "center"},
              "fill": {"value": "#333"}
            },
            "update": {
              "x": {"scale": "x","signal": "tooltip.x"},
              "dx": {"scale": "x","band": true,"mult": 0.5},
              "y": {"scale": "y","signal": "tooltip.y","offset": -5},
              "text": {"signal": "tooltip.color"}
            }
          }
        }
      ],
      "data": [
        {
          "name": "table",
          "values": []
        }
      ],
      "scales": [
        {
          "name": "x",
          "range": "width",
          "domain": {"data": "table","field": "x"},
          "type": "ordinal"
        },
        {
          "name": "y",
          "range": "height",
          "domain": {"data": "table","field": "y"},
          "type": "linear"
        },
        {
          "name": "group",
          "range": null,
          "domain": {"data": "table","field": "group"},
          "type": "ordinal"
        }
      ],
      "width": null
    };

    function colorchip(colors, chipHeight, chipWidth){
      rawspec.scales[2].range = colors || ["#000000","#1E46A2","#FB323B","#C5E137"]
      rawspec.height = chipHeight || 40
      rawspec.width = chipWidth || 60 * rawspec.scales[2].range.length

      //Create data structure, fill rawspec
      temp = []
      for(i = 0; i < colors.length; i++){
        temp.push({"x": i + 1, "y2": 0, "group": i + 1, "y": 1, "color": colors[i]});
      }
      rawspec.data[0].values = temp

      return rawspec
    }