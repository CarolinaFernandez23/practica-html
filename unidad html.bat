<!DOCTYPE html>
<html lang="es">
<head><!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eco Water Tracker</title>
    <style>
        body {
            background-image: url('fondo.jpg'); /* Agrega la URL de tu imagen de fondo de agua */
            background-size: cover;
            background-repeat: no-repeat;
            backdrop-filter: blur(10px); /* Añade un efecto de desenfoque al fondo */
            text-align: center;
            font-family: Arial, sans-serif;
        }
        #header {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        #left {
            flex: 1;
            text-align: right;
        }
        #right {
            flex: 1;
            text-align: left;
        }
        #title {
            font-size: 24px;
        }
        #info {
            font-size: 18px;
            font-weight: bold;
        }
        #recomendaciones {
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
        }
        #calculator {
            margin-top: 20px;
        }
        .result {
            display: none;
            font-size: 18px;
            font-weight: bold;
        }
        #nino-triste {
            max-width: 100px;
        }
        #nino-feliz {
            max-width: 100px;
        }
    </style>
</head>
<body>
    <div id="header">
        <div id="left">
            <img src="bolivia.jpg" alt="Bolivia" width="100">
        </div>
        <div id="center">
            <h1 id="title">Eco Water Tracker</h1>
        </div>
        <div id="right">
            <img src="universidad.jpg" alt="Universidad" width="100">
        </div>
    </div>
    <div id="info">
        <p>Bienvenido a nuestro sistema de Eco Water Tracker que se encarga de ayudarle a calcular el consumo de agua que tiene y ver si este es excesivo o adecuado. En caso de ser excesivo, se le brindarán recomendaciones para mejorar la manera de uso del agua.</p>
    </div>
    <div id="recomendaciones">
        <p>El agua es vida. Recuerda cuidarla, cada gota cuenta para un futuro sostenible y responsable con nuestro recurso vital.</p>
    </div>
    <div id="calculator">
        <label for="consumo">Ingrese el consumo de agua en metros cúbicos (m³):</label>
        <input type="number" id="consumo" step="0.01">
        <button onclick="calcularConsumo()">Calcular</button>
        <div id="exceso" class="result">
            <img id="nino-triste" src="triste.jpg" alt="Niño Triste">
            <p>Uso excesivo. Recomendaciones:</p>
            <ul>
                <li>Sé más consciente.</li>
                <li>Cierra el grifo mientras te enjabonas las manos o te lavas los dientes.</li>
                <li>Aprovecha el agua de lluvias.</li>
                <li>Reutiliza el agua de la lavadora y ducha.</li>
            </ul>
        </div>
        <div id="adecuado" class="result">
            <img id="nino-feliz" src="feliz.jpg" alt="Niño Feliz">
            <p>Buen consumo, pero puede mejorar.</p>
        </div>
    </div>

    <script>
        function calcularConsumo() {
            var consumo = parseFloat(document.getElementById("consumo").value);
            var exceso = document.getElementById("exceso");
            var adecuado = document.getElementById("adecuado");

            if (consumo > 14) {
                exceso.style.display = "block";
                adecuado.style.display = "none";
            } else {
                exceso.style.display = "none";
                adecuado.style.display = "block";
            }
        }
    </script>
</body>
</html>
