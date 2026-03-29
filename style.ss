* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background: #f4f4f4;
    text-align: right;
    scroll-behavior: smooth;
    padding-top: 70px;
}


#startScreen,
#welcomeScreen {
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background: #2c7a4b;
    color: white;
}

button {
    padding: 12px 25px;
    border: none;
    background: white;
    color: #2c7a4b;
    border-radius: 10px;
    font-size: 18px;
    cursor: pointer;
}

.start-title {
    font-size: 50px;
    animation: moveTitle 2s infinite alternate;
}

@keyframes moveTitle {
    0% {
        transform: translateY(0);
    }

    100% {
        transform: translateY(-20px);
    }
}


.menu {
    background: #2c7a4b;
    position: fixed;
    top: 0;
    width: 100%;
    display: flex;
    justify-content: flex-end;
    padding: 10px 30px;
    z-index: 1000;
}

.menu ul {
    display: flex;
    gap: 25px;
    list-style: none;
}

.menu a {
    color: white;
    text-decoration: none;
    font-size: 18px;
}

.menu-btn {
    display: none;
    background: none;
    border: none;
    color: white;
    font-size: 24px;
    cursor: pointer;
}


header {
    background: linear-gradient(135deg, #2c7a4b, #3aa66a);
    height: 220px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    border-bottom-left-radius: 50px;
    border-bottom-right-radius: 50px;
}

#main-title {
    background: rgba(0, 0, 0, 0.4);
    padding: 15px 30px;
    border-radius: 15px;
}


section {
    width: 90%;
    margin: 40px auto;
    background: white;
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    position: relative;
    overflow: hidden;
}


.fade {
    opacity: 0;
    transform: translateY(40px);
    transition: 0.6s;
}

.fade.show {
    opacity: 1;
    transform: translateY(0);
}


.images {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.card {
    height: 300px;
    border-radius: 15px;
    overflow: hidden;
    position: relative;
}

.card img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.6s ease, filter 0.6s ease;
}

.overlay {
    position: absolute;
    bottom: 0;
    width: 100%;
    background: rgba(0, 0, 0, 0.6);
    color: white;
    text-align: center;
    padding: 12px;
    opacity: 0;
    transition: 0.4s;
}

.card:hover img {
    transform: scale(1.1);
}

.card:hover .overlay {
    opacity: 1;
}


ul {
    list-style-type: square;
    padding-right: 20px;
}

li {
    margin-bottom: 10px;
    font-size: 18px;
    color: #2c7a4b;
}

h2 {
    color: #2c7a4b;
    border-right: 4px solid #2c7a4b;
    padding-right: 10px;
    margin-bottom: 15px;
}


.info-table {
    margin: 0 auto;
    width: 80%;
    border-collapse: collapse;
    text-align: center;
}

.info-table th {
    background: #2c7a4b;
    color: white;
}

.info-table th,
.info-table td {
    padding: 15px;
    border-bottom: 1px solid #ddd;
}


.footer {
    background: linear-gradient(45deg, #2c7a4b, #3aa66a);
    color: white;
    text-align: center;
    padding: 25px;
    margin-top: 50px;
}


#topBtn {
    position: fixed;
    bottom: 20px;
    left: 20px;
    background: #2c7a4b;
    color: white;
    padding: 12px;
    border: none;
    border-radius: 50%;
    display: none;
    cursor: pointer;
}


@media(max-width:900px) {
    .images {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media(max-width:600px) {
    .images {
        grid-template-columns: 1fr;
    }

    .menu ul {
        display: none;
        flex-direction: column;
        position: absolute;
        top: 60px;
        right: 0;
        background: #2c7a4b;
        padding: 10px;
    }

    .menu-btn {
        display: block;
    }
}
