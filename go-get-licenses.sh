#!/usr/bin/env bash
set -euo pipefail

OUT=THIRD_PARTY_LICENSES
> "$OUT"

# Read modules.txt and extract module name and version
while IFS=' ' read -r module version _; do
    # Skip empty lines or non-module entries
    if [[ -z "$module" || "$module" =~ ^# ]]; then
        continue
    fi

    # Find LICENSE, COPYING, or NOTICE file inside the module
    LICENSE_FILE=$(find "vendor/$module" -type f \( -iname "LICENSE*" -o -iname "COPYING*" -o -iname "NOTICE*" \) | head -n 1)

    if [[ -n "$LICENSE_FILE" ]]; then
        # Write module information in starred format
        echo "** $module; version $version -- https://github.com/$module" >> "$OUT"
        echo >> "$OUT"
        
        # Add the actual license text
        cat "$LICENSE_FILE" >> "$OUT"
        echo -e "\n" >> "$OUT"
    fi
done < vendor/modules.txt

