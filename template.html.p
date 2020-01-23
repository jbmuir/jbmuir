<html>
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h1 doc) | Jack B. Muir</title>
  <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<div class="myname"><a href="index.html">Jack B. Muir</a></div>
<nav>
  ◊(->html (->linklist 'index.html "index.ptree"))
  <a href=https://github.com/jbmuir>Code</a>
  <a href=https://scholar.google.com/citations?user=Eo4c4iAAAAAJ&hl>Google Scholar</a>
</nav>
<body>
  ◊(->html doc)
</body>
</html>
