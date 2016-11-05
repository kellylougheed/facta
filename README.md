<h1>Facta</h1>

<b>This app was built in Ruby on Rails, JavaScript, jQuery, HTML, CSS, and Bootstrap.</b>

Facta displays user-generated fun facts about Ancient Rome. Users regulate the intellectual integrity of the site by flagging questionable facts as false and adding citations to facts with evidence.

<h2>Features:</h2>

<ul>
<li> Homepage presents a fun fact about Ancient Rome generated randomly from the database.</li><br/>

<li> Users can press a button to flag a fact as false.</li><br/>

<li> A JavaScript confirm box asks users to confirm they would like to flag the fact as false. Then an AJAX call adds the flag to the fact in the database.</li><br/>

<li> Facts with flags come with a warning specifying the number of users who have flagged it as false.</li><br/>

<li> Users can add facts and add citations to facts that are true.</li><br/>

<li> Users can view all facts, which are paginated using the will_paginate gem.</li><br/>

<li> The searchbar allows users to search for facts that contain specific words (e.g. "gladiators"). Search results are paginated with will_paginate.</li><br/>

<li> The data is queried and stored with PostgreSQL.</li><br/>
</ul>
