#!/bin/bash

output=$(curl -s \
-H "Accept: application/json" \
-H "Content-Type:application/json" \
-H "Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnRJZCI6IjNmNzIwN2I1LWUyOTAtNDI2MC1hYzEzLWE2NGVlZDNjMmMwMCIsImNzcmYiOiJmY2JjZDhmYS1hMmM1LTQ5ZmMtYTA3OC1hZTQ2NTM2ODI1NDAiLCJzZXNzaW9uSWQiOiI2ODBlMWRiMS02NDAwLTQwODUtYjVmNy1hNzZhMTI4ZjE1MTgiLCJjbGllbnRJZCI6ImEzNGY0NzlhLWZhMzYtNGY2YS1iZTFmLWQzZDJhZmU4MjZmNiIsImRlc2NyaXB0aW9uIjoiSGFybW9ueSBtb2JpbGUgQVBJIiwiYXBwSWQiOiJhZGE3OWJiMS05MjY0LTQzMWMtOWE1ZS1kYzkwZDM1N2IxZDIiLCJyb2xlIjoiQWRtaW4iLCJyb2xlcyI6WyJhZG1pbiJdLCJzY29wZSI6bnVsbCwiaXNzdWVkQnkiOm51bGwsImF1dGhUeXBlIjoiRVhURVJOQUwiLCJjb29raWVWZXJzaW9uIjoiNyIsImlhdCI6MTY1NTQ0ODc3MSwiZXhwIjoxNjU1NDUwNTcxfQ.KZYbTIDWsg2poa2gg2gEzOdPn4ahchneAYGPrhYvakPlYwWnNV6ZqMCRHEk7gz-ePHqBmySVcjnKQObYmD6FzAs6H2QmGzPbNMGTr6axNZ1uGeMLXQ4qVcQ_UfuLtoi_Se-m7WhAq9oJCGoGxSGgOQ7ML5gXKJKvk6nHKUb4zItRKYdzAVIQxVwJfkPJvwIpfNg4778ssGf1K4vZ-LPq_LJX0t2rN18tHJtvNcmoDnJwRvCk0AAbggicFvyoekC9XDImz_ROHa64zK-3M1RcoFo1cwPRpp6UEwP4fJzvk1NezWGTflaGvSInqo5q9O5cOAxZPODzhhxxK7TM9eKUrum2wthf8EMA1yGgUa5qN2Z7RvQsYS2XTptzwkaokfbveEazQjirwVlxEcYU1CS0vttJ2Ez-wJXb7dTpyI3TlenDwHQROMRZXlCLNnw0hCJyO3Ie3n-F80QuQ4_GPZtxlC1FauOaivTSPpnJMgTpiFaxQmBOXmzmUndIkqi4lnPbLq7_xC52V0x794q_a5zP_kmBtFk12BQUJv_p41roO2Da2jBVtM-9l5HH_uVhbqHhADMxKbn-LlQ77w2PhSzpTcExMWGRe7seyBh6o-ylDII2AJeiGQXplQhYlM6tjtLMtnYfpLrxVD1eAn7SdPvi-4Axi1e-W5rrLALlri5i2aU" \
-X GET "https://cloudinfra-gw.portal.checkpoint.com/app/SBM/external_api/v1/device_status/58287/?format=json")

echo "$output"