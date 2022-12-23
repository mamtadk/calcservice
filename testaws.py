import requests

url = 'http://ecsalb-207347062.us-east-1.elb.amazonaws.com/sum'

data = {'num1': 20000, 'num2': 3}

response = requests.post(url, json=data)

print(response.json())


response = requests.get('http://ecsalb-207347062.us-east-1.elb.amazonaws.com/health')
print(response.text)
