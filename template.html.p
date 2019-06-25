<html>
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h1 doc) | Jack B. Muir</title>
  <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<div class="myname">Jack B. Muir</div>
<nav>
  ◊(->html (->linklist 'index.html "index.ptree"))
  <a href=https://github.com/jbmuir>Code</a>
</nav>
<body>
  ◊(->html doc)
</body>
</html>
