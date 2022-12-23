from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/sum', methods=['POST'])
def sum():
    # get the two numbers from the request
    data = request.get_json()
    num1 = data['num1']
    num2 = data['num2']

    # calculate the sum
    result = num1 + num2

    # return the result as a JSON object
    return jsonify({'result': result})

@app.route('/health')
def health():
    # perform health checks here
    is_healthy = True  # set this to False if any checks fail

    if is_healthy:
        return 'OK'
    else:
        return 'NOT OK', 500


if __name__ == '__main__':
    print(" Starting Application ........")
    app.run(host='0.0.0.0')