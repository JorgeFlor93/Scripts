#!/bin/bash

# Descargar los dispositivos inactivos con más de 30 días desde Harmony y luego en el archivo devices.txt pastear los ID
# Necesario generar token con la API "bash get_token.sh" luego copiar pegar en -H Authorization: Bearer <token>

cr=$'\r'
while IFS= read -r ID || [[ -n $ID ]]; do 
    line="${ID%$cr}"
    curl -X DELETE 'https://cloudinfra-gw.portal.checkpoint.com/app/SBM/external_api/v1/device/'"$line"'/' \
    -H "Accept: application/json" \
    -H "Content-Type:application/json" \
    -H "Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnRJZCI6IjNmNzIwN2I1LWUyOTAtNDI2MC1hYzEzLWE2NGVlZDNjMmMwMCIsImNzcmYiOiI3Nzg3MzIwNC1lNDYzLTRkZDYtODI2MS01YzgwYjAyNDc0MDIiLCJzZXNzaW9uSWQiOiIzNzlhZGIxMS0xNDNlLTQ1Y2ItYjU5ZS1mN2E4ZmM1NzYzNTMiLCJjbGllbnRJZCI6ImEzNGY0NzlhLWZhMzYtNGY2YS1iZTFmLWQzZDJhZmU4MjZmNiIsImRlc2NyaXB0aW9uIjoiSGFybW9ueSBtb2JpbGUgQVBJIiwiYXBwSWQiOiJhZGE3OWJiMS05MjY0LTQzMWMtOWE1ZS1kYzkwZDM1N2IxZDIiLCJyb2xlIjoiQWRtaW4iLCJyb2xlcyI6WyJhZG1pbiJdLCJzY29wZSI6bnVsbCwiaXNzdWVkQnkiOm51bGwsImF1dGhUeXBlIjoiRVhURVJOQUwiLCJjb29raWVWZXJzaW9uIjoiNyIsImlhdCI6MTY2MjM3NTgyMiwiZXhwIjoxNjYyMzc3NjIyfQ.e0NvCH1RcCqYdIucAC8bBAGo_HFR97wUkdRw-N4c-28Rr-7pbPjC-tDsuDf1iAIuH90pTtrRYCTwPqLeEdsq-oh5e7-TCGVuHprOhneELcgSXikpnDMwi11IbgCcI6WQUsQ4lNVQCR7aNFmc1PUoSodjesyN2M4CEacAnosRj5bk1wWz81YAMDkBo18NwS2x31mfNarKv3_ZFcUhhUGpZQVvy0lHAnJnlTzn1PYMSX2kFz_5aZS6wyjfY33dy096ZrRFwmAJGWNgvip5DLESFT35XVbutqQwz_kamkHsZfZDDkzGc8ZRQpBCCBzDz0pLVRnWTaz7oZn3eCmSQVUMXoveO_aY_o2qmUlfE-ut5bJO7IAAebY5PFITeGhLMw5Wpe8FyocVb55HlkJnIZbp5hooM0Pb4YpV_FbQKZt2tIHqKOpujHqsy-ZCZlE1r0SJKA8WZrfkW56Fs-kpjcJNsx4BBppeDYWWELRt9HNmTt6fS6RyOwX-0Mo4X-XhzXZ1p3Gkk2wgzfni94EtO23wGJXm822Epr8XpDT1tSKt3I3seTT9ZakxBYpfZOaJTiVGEZaWvmf7lUk4lHPx_pKzEfPy6wp-JLhyr6eAblByi0yuLiKsWF_GVZlQ7MrrWQJANK30dG_iysyFNNnbmkqV7mLiESnsCd2BWybnz0CrrJw" \
    -H "Host: cloudinfra-gw.portal.checkpoint.com" 
done < devices.txt