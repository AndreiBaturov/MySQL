select c.name as from, c.name as to
from flighs f
join cities c on f.from = c.label;
