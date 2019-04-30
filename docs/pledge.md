---
layout: default
title: The Profit Free Pledge
permalink: /
---

# The Profit Free Pledge

As a maintainer of an open source project or group, I affirm that
the community to which I belong practices transparency, and exists
*for the greater good*. Specifically, this means that:

 - The software that is being provided open source by a company cannot directly or indirectly contribute to making profits for that company.
 - The majority of contributors represent dispersed community (and not required participants for a company)
 - The community must have completely open communication, meaning all discussion around development is public.
 - All software is provided under an open source license, with no private distributions or versions with special privileges.

By taking this pledge, I am committing to a continued effort to maintain this
transparency of communication, incentives, and finances. I affirm that
the open source project or community that I represent exists for the
greater good. If for any reason these points no longer hold true, I must
openly revoke this pledge.

<br><br>

[Sign the Pledge](https://github.com/good-labs/profit-free-pledge/edit/master/pledge.csv){: .btn .float-right .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 }

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

    rows = ""
    url = "https://raw.githubusercontent.com/good-labs/profit-free-pledge/master/pledge.csv"
    $.get(url, function(data) {
        data = data.split("\n")
        $.each(data, function(i, d){
            items = d.split(",")
            rows = rows + "<tr><td>" + items[0] + "</td><td>" + items[1] + "</td></tr>\n"  
        });
    });
    $('#contributor-table').append(rows)
    $('#contributors').show();
});
</script>

---
