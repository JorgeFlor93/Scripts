#!/bin/bash

while [ true ] 
do
curl -X POST 'https://cloudinfra-gw.portal.checkpoint.com/app/SBM/external_api/v2/device/' \
-H "Accept: application/json" \
-H "Content-Type:application/json" \
-H "Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnRJZCI6IjNmNzIwN2I1LWUyOTAtNDI2MC1hYzEzLWE2NGVlZDNjMmMwMCIsImNzcmYiOiIwZmZlMjkyMC1kNDMwLTRhNTctYmEyMy03NTFjM2NlNzg1ZTAiLCJzZXNzaW9uSWQiOiIxNGUxMDJjYS1iODllLTQzMDMtODA1ZC02NGQ2OGUyMGViYTkiLCJjbGllbnRJZCI6ImEzNGY0NzlhLWZhMzYtNGY2YS1iZTFmLWQzZDJhZmU4MjZmNiIsImRlc2NyaXB0aW9uIjoiSGFybW9ueSBtb2JpbGUgQVBJIiwiYXBwSWQiOiJhZGE3OWJiMS05MjY0LTQzMWMtOWE1ZS1kYzkwZDM1N2IxZDIiLCJyb2xlIjoiQWRtaW4iLCJyb2xlcyI6WyJhZG1pbiJdLCJzY29wZSI6bnVsbCwiaXNzdWVkQnkiOm51bGwsImF1dGhUeXBlIjoiRVhURVJOQUwiLCJjb29raWVWZXJzaW9uIjoiNyIsImlhdCI6MTY1NzAyMDE2NCwiZXhwIjoxNjU3MDIxOTY0fQ.I0acjsKBoXMUK7cA7oGkmQ3KOm78oEMrJanE0oEha5HwnFwKiywYLlDEL93xFAtXJhBU4p2tMnMJXB-Ns2VYSlRDekIVpu4wVnW9tdxQzTgTqHTGG1jRufXV51Y8u9p41gKOb3YGMnIM8UG4qREB2EsxoE72yUxb4H_HD-sOhYjC3WAekgzzB8JS5-JQ6KzKN_r6TKDghdAmYXZG_BvUszPe54qRY98DEkQIpcdoW7HFCuJK53UiwIJbwao26EPegFp9SEXkVyIjJ3Jn3Mac8fWB0H8z9gwUMyuMXGTEls-FDlx1WFPhJw1ZenbVl-FwkvJ29hm6wflOHK87UTlxo8NLPs1-1y-juAizWfFhQZ3CKrzm5SVhYD1whCzFwsuoVI0wUBQ0iI5VpqTBclE9hzaGocPD2wqbGf5m0dIolPlVSX5HF78saJ45p1TBCck7vqZ-K93PgTKrzXI5XFRM7h0152QXBdBOb4h5qlLNs0JA04iREJHBNrN9xfrVrhh145L9Mn5CwFYfSLdyQfR7NNGZHIGtbP6NejR6HHZSu95I6SbjCj95pv2B7Rozz0rYFO2EYxGFYL1msx570fn4cb9PcHfE2zWaeeLluAHT5pD8q4fdMzeBE4Cd1_GIqWDL6PArmv7mCfz0m-ctqH2JhFSr8vWnEUPeNoZ9MUZLeLY" \
-H "Host: cloudinfra-gw.portal.checkpoint.com"
-d '{"name": test1, "email": test1@test1.com}'
break
done