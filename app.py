from flask import Flask, render_template
import requests

app = Flask(__name__)

# Zamijeni s vlastitim API ključem
API_KEY = '0029814c2d27fae26c99a1f8'
BASE_URL = 'https://v6.exchangerate-api.com/v6/{}/latest/USD'.format(API_KEY)

@app.route('/')
def home():
    try:
        response = requests.get(BASE_URL)
        data = response.json()

        if data['result'] == 'success':
            rates = data['conversion_rates']
            return render_template('index.html', rates=rates)
        else:
            return "Došlo je do pogreške pri dohvaćanju podataka o valutama."
    except Exception as e:
        return f"Greška pri povezivanju s API-em: {e}"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
