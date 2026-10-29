import functions_framework

@functions_framework.http
def hello_http(request):
    """Responde a cualquier petición HTTP."""
    request_args = request.args
    if request_args and 'name' in request_args:
        name = request_args['name']
    else:
        name = "World"
    return f"Hello {name}!"