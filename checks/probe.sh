#!/bin/sh
# /page reflects the name and has PhantomJS load the result: a harmless name gets a failed verdict.
curl -fsS --max-time 30 'http://web:5000/page?name=probe' | grep -q 'alt="Fail"'
