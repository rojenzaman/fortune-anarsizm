#!/bin/bash
AUTHOR_DIR="people"

url_slug() { export LANG="en_US.UTF-8"; iconv -t ascii//TRANSLIT | sed -r s/\'//g | sed -r 's/\(//g' | sed -r 's/\)//g' | sed -r s/[~\^]+//g | sed -r s/[^a-zA-Z0-9]+/-/g | sed -r s/^-+\|-+$//g | tr A-Z a-z; }

if [[ "$#" -lt 4 ]]; then
	echo "Usage: $(basename "${BASH_SOURCE[0]}") [ -l LIST -a AUTHOR ] -o OUTPUT"
	exit 1
fi

while getopts ":l:o:a:" opt; do
    case "${opt}" in
        l) list="$(realpath "${OPTARG}")" ; test -f "${list}" && lflag=true ;;
        o) output="$(realpath "${OPTARG}")" ; oflag=true ;;
	a) author="${OPTARG}" ; aflag=true ;;
        :) echo "Error: -${OPTARG} requires an argument." ; exit 1 ;;
        *) echo "Unknown option: -${OPTARG}" ; exit 1 ;;
    esac
done

if [[ ! "${lflag}" ]]; then echo "-l option must be specified"; exit 1; fi
if [[ ! "${aflag}" ]]; then echo "-a option must be specified"; exit 1; fi
if [[ ! "${oflag}" == "true" ]]; then
	output="${AUTHOR_DIR}/$(echo "${author}" | url_slug)"
fi

while IFS= read -r line; do
cat >> "${output}" <<EOT
${line}
		-- ${author}
%
EOT
done < "${list}"
echo "${output}"
