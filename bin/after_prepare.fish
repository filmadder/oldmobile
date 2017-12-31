#!/usr/bin/fish

begin
	set -l link_tag '<link rel="stylesheet" type="text/css" href="styles/overrides.css" />'

	for index_html in (find platforms -type f -path '*/www/index.html')
		sed -e '/<\/head>/i '$link_tag -i $index_html
	end
end
