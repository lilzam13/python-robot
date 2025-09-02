import json

val = '{"id": 1,"first_name": "Britteny","last_name": "Dundridge","email": "bdundridge0@patch.com","gender": "Agender","ip_address": "49.13.55.69"}'
val = '{"id": 2,"first_name": "Tomaso","last_name": "Shepeard","email": "tshepeard1@mapy.cz","gender": "Male","ip_address": "249.237.152.219"}'
val = '{"id": 3,"first_name": "Scotti","last_name": "Vockins","email": "svockins2@abc.net.au","gender": "Polygender","ip_address": "174.119.145.19"}'
val = '{"id": 4,"first_name": "Moselle","last_name": "Maine","email": "mmaine3@bigcartel.com","gender": "Female","ip_address": "19.143.136.126"}'
val = '{"id": 5,"first_name": "Shaun","last_name": "Dymond","email": "sdymond4@barnesandnoble.com","gender": "Male","ip_address": "107.66.46.64"}'
val = '{"id": 6,"first_name": "Roberto","last_name": "Bargh","email": "rbargh5@zimbio.com","gender": "Male","ip_address": "80.56.121.62"}'
val = '{"id": 7,"first_name": "Suzie","last_name": "Szimon","email": "sszimon6@ycombinator.com","gender": "Female","ip_address": "223.182.27.24"}'


json_resultado = json.loads(val)
print(json_resultado)