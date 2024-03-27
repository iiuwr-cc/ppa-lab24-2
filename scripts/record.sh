#!/bin/sh

set -e

APK="./install/apk"
EMBED="./scripts/embed.sh"

if [ "$#" != "3" ]
then
    echo "usage: $0 [code_file] [language] [analysis_name]"
    exit 1
fi

code="$1"
language="$2"
analysis="$3"

tmp_code=`mktemp`
tmp_table=`mktemp`

${APK} "${language}" "simplify" "${code}" -o "${tmp_code}"
${APK} "${language}" "analyse" "${analysis}" "${tmp_code}" -t "${tmp_table}"
${EMBED} "${tmp_code}" "${language}" "${analysis}" "${tmp_table}"
rm -f "${tmp_code}" "${tmp_table}"
