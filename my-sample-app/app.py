from chalice import Chalice

app = Chalice(app_name='my-sample-app')


@app.route(
    '/',
    methods=["GET", "POST"],
    cors=True
)
def index():
    return {'hello': 'world'}
