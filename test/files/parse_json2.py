import json
import requests

url = "https://reqres.in/api/users/2"
response = requests.get(url)
print(response.text)

#Convertir a formato json
json_responde = json.loads(response.text)
print(json_responde)