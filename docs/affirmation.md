---
layout: default
title: The Greater Good Affirmation
permalink: /participate/
---

<div id="affirmation" style="display:none"></div>

<br><br>

[Get the Badge](https://github.com/good-labs/greater-good-affirmation/edit/master/badge.md){: .btn .float-right .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 }

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/assets/js/showdown.min.js"></script>

<script>
$(document).ready(function(){

    // This section adds the pledge do the page
    affirm_url = "https://raw.githubusercontent.com/good-labs/greater-good-affirmation/master/GREATER_GOOD_AFFIRMATION.md"
    $.get(affirm_url, function(data) {

        var converter = new showdown.Converter(),
                 html = converter.makeHtml(data);

        $('#affirmation').html(html)
        $('#affirmation').show();
    });

});
</script>

---
