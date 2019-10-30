<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Home Page</title>
</head>
<body>

<br>
<br>
<br>
<section>
            <div class="jumbotron">
                <div class="container">
          
           
          <!--  PARA AÑADIR ICONOS, PODEMOS USAR LOS QUE NOS PROPORCIONA 'FONTAWESOME' QUE ES ESTILO BOOTSTRAP PERO ESTE OFRECE ICONOS Y FUENTES GRATIS.
          PARA USARLO ES BASTANTE FACIL, POR EJEMPLO https://fontawesome.com/icons/envira?style=brands . AQUI ESTE ICONO PARA AÑADIRLO AQUI SIMPLEMENTE
          COPIAMOS EL <i class="fab fa-envira"></i> Y LO PEGAMPOS DONDE QUEREMOS USARLO. -->

                    <h1> Benvingut a la botiga online Bio! <i class="fab fa-envira fa-1x"></i> </h1> 
                </div>
            </div>
        <form action="allUsers" method="post">

		<input type="submit" value="Listar todos los usuarios" />

	</form>
        <br>
	<form action="allProductes" method="post">

		<input type="submit" value="Listar todos los productos" />

	</form>
        </section>     
                
	 <!---------------------------- DEPENDENCIES NECESSÀRIES PER BOOTSTRAP I FONTAWESOME================================ -->
        <script src="https://kit.fontawesome.com/02893b0cef.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>