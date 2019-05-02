---
layout: default
title: The Greater Good Pledge
permalink: /pledge/
---

<div id="pledge" style="display:none"></div>

<br><br>

[Sign the Pledge](https://github.com/good-labs/greater-good-pledge/edit/master/pledge.csv){: .btn .float-right .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 }

<div id="contributors" style="display:none">
<table>
    <thead><tr>
     <th>Project or Community</th>
     <th>Url</th>
    </tr>
    </thead>
    <tbody id="contributor-table">
    </tbody>
</table>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/assets/js/showdown.min.js"></script>

<script>
$(document).ready(function(){

    // This section adds the pledge do the page
    pledge_url = "https://raw.githubusercontent.com/good-labs/greater-good-pledge/master/GREATER_GOOD_PLEDGE.md"
    $.get(pledge_url, function(data) {

        var converter = new showdown.Converter(),
                 html = converter.makeHtml(data);

        $('#pledge').html(html)
        $("#projectsareencouragedto").css("padding-top", "35px");
        $('#pledge').show();
    });

    // This section adds the table to the page (after the pledge)
    rows = ""
    url = "https://raw.githubusercontent.com/good-labs/greater-good-pledge/master/pledge.csv"
    $.get(url, function(data) {
        data = data.split("\n").slice(1,)
        $.each(data, function(i, d){
            items = d.split(",")
            if (!((items[0] === undefined) || (items[1] === undefined))) {                 
                rows = rows + "<tr><td>" + items[0] + "</td><td><a target=\"_blank\" href=\"" + items[1] + "\">" + items[1] + "</a></td></tr>\n"  
            }
        });
        $('#contributor-table').html(rows)
        $('#contributors').show();
    });

});
</script>

---
