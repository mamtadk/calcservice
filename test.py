import requests

url = 'http://127.0.0.1:5000/sum'

data = {'num1': 2, 'num2': 3}

response = requests.post(url, json=data)

print(response.json())


response = requests.get('http://localhost:5000/health')
print(response.text)
