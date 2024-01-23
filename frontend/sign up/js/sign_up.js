function logIn(){
    window.location.href = "http://localhost:3001/login"
}

async function signIn(){
    var name = document.getElementById('input-name').value;
    var mail = document.getElementById('input-mail').value;
    var pass = document.getElementById('input-password').value;

    const datos = {
        user_email: mail,
        user_name: name,
        user_password: pass
    };

    const opciones = {
        method: 'POST', // Método de la solicitud
        headers: {
          'Content-Type': 'application/json' // Tipo de contenido del cuerpo de la solicitud (en este caso, JSON)
          // Puedes incluir otros encabezados según sea necesario
        },
        body: JSON.stringify(datos) // Convierte los datos a una cadena JSON y los incluye en el cuerpo de la solicitud
    };

    
    const response = await fetch("http://localhost:3001/auth/signup", opciones);
    if (response.ok) {
        window.location.href = "http://localhost:3001/login";
    }
    
}