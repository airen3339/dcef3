        ??  ??                  y#  @   ??
 C E F F I L E S C H E M E D I R         0         <!DOCTYPE html> 
<html> 
<head> 
<script> 
function addRow(name, url, isdir, size, date_modified) {
  if (name == ".")
    return;
 
  var root = "" + document.location;
  if (root.substr(-1) !== "/")
    root += "/";
 
  var table = document.getElementById("table");
  var row = document.createElement("tr");
  var file_cell = document.createElement("td");
  var link = document.createElement("a");
 
  link.className = isdir ? "icon dir" : "icon file";
 
  if (name == "..") {
    link.href = root + "..";
    link.innerText = document.getElementById("parentDirText").innerText;
    link.className = "icon up";
    size = "";
    date_modified = "";
  } else {
    if (isdir) {
      name = name + "/";
      url = url + "/";
      size = "";
    }
    link.innerText = name;
    link.href = root + url;
  }
  file_cell.appendChild(link);
 
  row.appendChild(file_cell);
  row.appendChild(createCell(size));
  row.appendChild(createCell(date_modified));
 
  table.appendChild(row);
}
 
function createCell(text) {
  var cell = document.createElement("td");
  cell.setAttribute("class", "detailsColumn");
  cell.innerText = text;
  return cell;
}
 
function start(location) {
  var header = document.getElementById("header");
  header.innerText = header.innerText.replace("LOCATION", location);
 
  document.getElementById("title").innerText = header.innerText;
}
 
</script> 
 
<style> 
 
  h1 {
    border-bottom: 1px solid #c0c0c0;
    margin-bottom: 10px;
    padding-bottom: 10px;
    white-space: nowrap;
  }
 
  table {
    border-collapse: collapse;
  }
 
  tr.header {
    font-weight: bold;
  }
 
  td.detailsColumn {
    padding-left: 2em;
    text-align: right;
    white-space: nowrap;
  }
 
  a.icon {
    padding-left: 1.5em;
    text-decoration: none;
  }
 
  a.icon:hover {
    text-decoration: underline;
  }
 
  a.file {
    background : url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAABnRSTlMAAAAAAABupgeRAAABHUlEQVR42o2RMW7DIBiF3498iHRJD5JKHurL+CRVBp+i2T16tTynF2gO0KSb5ZrBBl4HHDBuK/WXACH4eO9/CAAAbdvijzLGNE1TVZXfZuHg6XCAQESAZXbOKaXO57eiKG6ft9PrKQIkCQqFoIiQFBGlFIB5nvM8t9aOX2Nd18oDzjnPgCDpn/BH4zh2XZdlWVmWiUK4IgCBoFMUz9eP6zRN75cLgEQhcmTQIbl72O0f9865qLAAsURAAgKBJKEtgLXWvyjLuFsThCSstb8rBCaAQhDYWgIZ7myM+TUBjDHrHlZcbMYYk34cN0YSLcgS+wL0fe9TXDMbY33fR2AYBvyQ8L0Gk8MwREBrTfKe4TpTzwhArXWi8HI84h/1DfwI5mhxJamFAAAAAElFTkSuQmCC ") left top no-repeat;
  }
 
  a.dir {
    background : url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAd5JREFUeNqMU79rFUEQ/vbuodFEEkzAImBpkUabFP4ldpaJhZXYm/RiZWsv/hkWFglBUyTIgyAIIfgIRjHv3r39MePM7N3LcbxAFvZ2b2bn22/mm3XMjF+HL3YW7q28YSIw8mBKoBihhhgCsoORot9d3/ywg3YowMXwNde/PzGnk2vn6PitrT+/PGeNaecg4+qNY3D43vy16A5wDDd4Aqg/ngmrjl/GoN0U5V1QquHQG3q+TPDVhVwyBffcmQGJmSVfyZk7R3SngI4JKfwDJ2+05zIg8gbiereTZRHhJ5KCMOwDFLjhoBTn2g0ghagfKeIYJDPFyibJVBtTREwq60SpYvh5++PpwatHsxSm9QRLSQpEVSd7/TYJUb49TX7gztpjjEffnoVw66+Ytovs14Yp7HaKmUXeX9rKUoMoLNW3srqI5fWn8JejrVkK0QcrkFLOgS39yoKUQe292WJ1guUHG8K2o8K00oO1BTvXoW4yasclUTgZYJY9aFNfAThX5CZRmczAV52oAPoupHhWRIUUAOoyUIlYVaAa/VbLbyiZUiyFbjQFNwiZQSGl4IDy9sO5Wrty0QLKhdZPxmgGcDo8ejn+c/6eiK9poz15Kw7Dr/vN/z6W7q++091/AQYA5mZ8GYJ9K0AAAAAASUVORK5CYII= ") left top no-repeat;
  }
 
  a.up {
    background : url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAmlJREFUeNpsU0toU0EUPfPysx/tTxuDH9SCWhUDooIbd7oRUUTMouqi2iIoCO6lceHWhegy4EJFinWjrlQUpVm0IIoFpVDEIthm0dpikpf3ZuZ6Z94nrXhhMjM3c8895977BBHB2PznK8WPtDgyWH5q77cPH8PpdXuhpQT4ifR9u5sfJb1bmw6VivahATDrxcRZ2njfoaMv+2j7mLDn93MPiNRMvGbL18L9IpF8h9/TN+EYkMffSiOXJ5+hkD+PdqcLpICWHOHc2CC+LEyA/K+cKQMnlQHJX8wqYG3MAJy88Wa4OLDvEqAEOpJd0LxHIMdHBziowSwVlF8D6QaicK01krw/JynwcKoEwZczewroTvZirlKJs5CqQ5CG8pb57FnJUA0LYCXMX5fibd+p8LWDDemcPZbzQyjvH+Ki1TlIciElA7ghwLKV4kRZstt2sANWRjYTAGzuP2hXZFpJ/GsxgGJ0ox1aoFWsDXyyxqCs26+ydmagFN/rRjymJ1898bzGzmQE0HCZpmk5A0RFIv8Pn0WYPsiu6t/Rsj6PauVTwffTSzGAGZhUG2F06hEc9ibS7OPMNp6ErYFlKavo7MkhmTqCxZ/jwzGA9Hx82H2BZSw1NTN9Gx8ycHkajU/7M+jInsDC7DiaEmo1bNl1AMr9ASFgqVu9MCTIzoGUimXVAnnaN0PdBBDCCYbEtMk6wkpQwIG0sn0PQIUF4GsTwLSIFKNqF6DVrQq+IWVrQDxAYQC/1SsYOI4pOxKZrfifiUSbDUisif7XlpGIPufXd/uvdvZm760M0no1FZcnrzUdjw7au3vu/BVgAFLXeuTxhTXVAAAAAElFTkSuQmCC ") left top no-repeat;
  }
 
  #listingParsingErrorBox {
    border: 1px solid black;
    background: #fae691;
    padding: 10px;
    display: none;
  }
</style> 
 
<title id="title"></title> 
</head> 
<body> 

<span id="parentDirText" style="display:none" i18n-content="parentDirText"></span> 

<h1 id="header" i18n-content="header"></h1> 

<table id="table"> 
  <tr class="header"> 
    <td i18n-content="headerName"></td> 
    <td class="detailsColumn" i18n-content="headerSize"></td> 
    <td class="detailsColumn" i18n-content="headerDateModified"></td> 
  </tr> 
</table> 
 
</body> 
 
</html> 
<script>var templateData = {"header":"Index of LOCATION","headerDateModified":"Last Modified","headerName":"Name","headerSize":"Size","parentDirText":"[Parent directory]"};</script><script>
// Copyright (c) 2010 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
 
/**
 * @fileoverview This is a simple template engine inspired by JsTemplates
 * optimized for i18n.
 *
 * It currently supports two handlers:
 *
 *   * i18n-content which sets the textContent of the element
 *
 *     <span i18n-content="myContent"></span>
 *     i18nTemplate.process(element, {'myContent': 'Content'});
 *
 *   * i18n-values is a list of attribute-value or property-value pairs.
 *     Properties are prefixed with a '.' and can contain nested properties.
 *
 *     <span i18n-values="title:myTitle;.style.fontSize:fontSize"></span>
 *     i18nTemplate.process(element, {
 *       'myTitle': 'Title',
 *       'fontSize': '13px'
 *     });
 */
 
var i18nTemplate = (function() {
  /**
   * This provides the handlers for the templating engine. The key is used as
   * the attribute name and the value is the function that gets called for every
   * single node that has this attribute.
   * @type {Object}
   */
  var handlers = {
    /**
     * This handler sets the textContent of the element.
     */
    'i18n-content': function(element, attributeValue, obj) {
      element.textContent = obj[attributeValue];
    },
 
    /**
     * This handler adds options to a select element.
     */
    'i18n-options': function(element, attributeValue, obj) {
      var options = obj[attributeValue];
      options.forEach(function(values) {
        var option = typeof values == 'string' ? new Option(values) :
            new Option(values[1], values[0]);
        element.appendChild(option);
      });
    },
 
    /**
     * This is used to set HTML attributes and DOM properties,. The syntax is:
     *   attributename:key;
     *   .domProperty:key;
     *   .nested.dom.property:key
     */
    'i18n-values': function(element, attributeValue, obj) {
      var parts = attributeValue.replace(/\s/g, '').split(/;/);
      for (var j = 0; j < parts.length; j++) {
        var a = parts[j].match(/^([^:]+):(.+)$/);
        if (a) {
          var propName = a[1];
          var propExpr = a[2];
 
          // Ignore missing properties
          if (propExpr in obj) {
            var value = obj[propExpr];
            if (propName.charAt(0) == '.') {
              var path = propName.slice(1).split('.');
              var object = element;
              while (object && path.length > 1) {
                object = object[path.shift()];
              }
              if (object) {
                object[path] = value;
                // In case we set innerHTML (ignoring others) we need to
                // recursively check the content
                if (path == 'innerHTML') {
                  process(element, obj);
                }
              }
            } else {
              element.setAttribute(propName, value);
            }
          } else {
            console.warn('i18n-values: Missing value for "' + propExpr + '"');
          }
        }
      }
    }
  };
 
  var attributeNames = [];
  for (var key in handlers) {
    attributeNames.push(key);
  }
  var selector = '[' + attributeNames.join('],[') + ']';
 
  /**
   * Processes a DOM tree with the {@code obj} map.
   */
  function process(node, obj) {
    var elements = node.querySelectorAll(selector);
    for (var element, i = 0; element = elements[i]; i++) {
      for (var j = 0; j < attributeNames.length; j++) {
        var name = attributeNames[j];
        var att = element.getAttribute(name);
        if (att != null) {
          handlers[name](element, att, obj);
        }
      }
    }
  }

  return {
    process: process
  };
})();
</script>
<script>i18nTemplate.process(document, templateData);</script>
   