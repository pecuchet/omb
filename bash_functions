#!/usr/bin/env bash

# Find web dependencies
grep_deps() {
    grep -IR --exclude-dir=vendor --exclude-dir=node_modules --include=composer.json --include=package.json "${1}" "${2}"
}

# Search through code
grep_code() { 
    grep -IR --exclude-dir=vendor \
	 --exclude-dir=node_modules \
	 --exclude-dir=public \
	 --exclude-dir=dist \
	 --exclude-dir=public_html \
	 --exclude-dir=wp-includes \
	 --exclude-dir=wp-content/plugins \
         --exclude="*.map" \
	 --exclude="*.min.js" \
	 --exclude="*.bundle.js" \
	 "${1}" "${2}"
}

