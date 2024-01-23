function signUp() {
    window.location.href = "http://localhost:3001/signUp";
}

async function logIn() {
    var mail = document.getElementById('input-mail').value;
    var pass = document.getElementById('input-password').value;

    const datos = {
        user_email: mail,
        user_password: pass
    };

    const opciones = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(datos)
    };

    try {
        const response = await fetch("http://localhost:3001/auth/login", opciones);

        if (response.ok) {
            const { token } = await response.json();
            // Almacena el token de manera segura (puedes considerar sessionStorage)
            localStorage.setItem('token', token);
            localStorage.setItem('user_mail', mail);
            
            // Redirige a una ruta protegida, por ejemplo, "/play"
            window.location.href = "http://localhost:3001/play";
        } else {
            const error = await response.json();
            console.error('Error en el inicio de sesión:', error.message);
            // Puedes manejar el error de alguna manera, por ejemplo, mostrando un mensaje al usuario
        }
    } catch (error) {
        console.error('Error al realizar el inicio de sesión:', error);
    }
}
