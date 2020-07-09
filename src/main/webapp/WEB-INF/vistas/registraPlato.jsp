<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Ejemplos de CIBERTEC - Jorge Jacinto </title>
</head>
<body>

<div class="container">
<h1>Registra Plato</h1>

	<c:if test="${sessionScope.MENSAJE != null}">
		<div class="alert alert-success fade in" id="success-alert">
		 <a href="#" class="close" data-dismiss="alert">&times;</a>
		 <strong>${sessionScope.MENSAJE}</strong>
		</div>
	</c:if>
	<c:remove var="MENSAJE" />

	<form action="registraPlato" id="id_form" method="post"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombre</label>
				<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_num_hombres">Precio</label>
				<input class="form-control" id="id_num_hombres" name="precio" placeholder="Ingrese el n�mero de hombres" type="text"/>
			</div>
			<div class="form-group">
				<label class="control-label" for="id_num_mujeres">Stock</label>
				<input class="form-control" id="id_num_mujeres" name="stock" placeholder="Ingrese el n�mero de mujeres" type="text" />
			</div>
			<div class="form-group">
				<label class="control-label" for="id_maxima">Restaurante</label>
				<input class="form-control" id="id_maxima" name="restaurante" placeholder="Ingrese la edad m�xima" type="text"/>
			</div>
			<div class="form-group">
				<label class="control-label" for="id_minima">FechaVencimiento</label>
				<input class="form-control" id="id_minima" name="fechaVencimiento" placeholder="Ingrese la edad m�nima" type="text"/>
			</div>
			<div class="form-group">
				<label class="control-label" for="id_minima">Ingredientes</label>
				<input class="form-control" id="id_minima" name="ingredientes" placeholder="Ingrese la edad m�nima" type="text"/>
			</div>
			<div class="form-group">
				<label class="control-label" for="id_deporte">Pais</label>
				<select id="id_deporte" name="pais.idPais" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Libro</button>
			</div>
	</form>
</div>

<script type="text/javascript">
$.getJSON("cargaPais", {}, function(data){
	$.each(data, function(index,item){
		$("#id_pais").append("<option value="+item.idPais +">"+ item.nombre +"</option>");
	});
});
</script>

<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

<script type="text/javascript">

$('#id_form').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	
    }   
});
</script>

<script type="text/javascript">

$('#id_form').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	nombre: {
    		selector : '#id_nombre',
            validators: {
                notEmpty: {
                    message: 'El nombre es un campo obligatorio'
                }
            }
        },
        precio: {
    		selector : '#id_num_hombres',
            validators: {
                notEmpty: {
                    message: 'El n�mero de hombres es un campo obligatorio'
                }
            }
        },
        stock: {
    		selector : '#id_num_mujeres',
            validators: {
            	notEmpty: {
                    message: 'El n�mero de mujeres es un campo obligatorio'
                }
            }
        },
        restaurante: {
    		selector : '#id_maxima',
            validators: {
            	notEmpty: {
                    message: 'La edad m�xima es un campo obligatorio'
                }
            }
        },
        fechaVencimiento: {
    		selector : '#id_minima',
            validators: {
            	notEmpty: {
                    message: 'La edad m�nima es un campo obligatorio'
                }
            }
        },
        ingredientes: {
    		selector : '#id_minima',
            validators: {
            	notEmpty: {
                    message: 'La edad m�nima es un campo obligatorio'
                }
            }
        },
        deporte: {
    		selector : '#id_deporte',
            validators: {
            	notEmpty: {
                    message: 'El deporte un campo obligatorio'
                }
            }
        },
    	
    }   
});
</script>

<script type="text/javascript">
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

</body>
</html>




