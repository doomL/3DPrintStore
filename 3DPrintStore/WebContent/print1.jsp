<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<html lang="en"><head><script>var base_url ="https://www.3dabax.com/calc";</script>




    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link rel="shortcut icon" href="https://www.3dabax.com/calc/favicon.ico" type="image/x-icon">
    <link rel="icon" href="https://www.3dabax.com/calc/favicon.ico" type="image/x-icon">

    <title>Price Calculator</title>

    <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
    <!-- Font Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://www.3dabax.com/calc/libs/jQuery-File-Upload/css/jquery.fileupload.css">

    <link href="https://www.3dabax.com/calc/libs/noUiSlider/nouislider.min.css" rel="stylesheet">

    <link href="https://www.3dabax.com/calc/libs/select2/css/select2.min.css" rel="stylesheet" media="screen">
    <link href="https://www.3dabax.com/calc/libs/select2/css/select2-bootstrap.min.css" rel="stylesheet">

    <link href="https://www.3dabax.com/calc/libs/datatables/datatables.min.css" rel="stylesheet">
    <link href="https://www.3dabax.com/calc/libs/editor/css/editor.bootstrap.min.css" rel="stylesheet">
    <link href="https://www.3dabax.com/calc/libs/bootstrap3-dialog/css/bootstrap-dialog.min.css" rel="stylesheet">

    <link href="https://www.3dabax.com/calc/libs/jQuery-contextMenu/jquery.contextMenu.min.css" rel="stylesheet">

    <link href="https://www.3dabax.com/calc/css/viewer.css" rel="stylesheet">
    <link href="https://www.3dabax.com/calc/css/style.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">

    <script>
        var my_settings=[], vendor, items =[], materials=[], cart=[],
            currentitem=null, currentmat=null, currentmachine=null, timer, delay = 300, loadingModel=false;

        vendor = 179;
        materials = JSON.parse('[{"id":"370","name":"PLA-Bassa Qualit\u00e0","description":"","max_size":{"length":"220","width":"220","height":"240"},"mShipdays":"0","wallthickness":null,"minPrice":null,"photourl":null,"colors":[],"extras":[],"machinetype":"1","resolution":"280","express":"0"},{"id":"371","name":"PLA-Normale","description":"","max_size":{"length":"220","width":"220","height":"240"},"mShipdays":"0","wallthickness":null,"minPrice":null,"photourl":null,"colors":{"989":{"id":"989","name":"Standard","colorcode":"#ffffff","photo":null}},"extras":[],"machinetype":"1","resolution":"200","express":"0"},{"id":"372","name":"PLA-Alta Qualit\u00e0","description":"","max_size":{"length":"220","width":"220","height":"240"},"mShipdays":"0","wallthickness":null,"minPrice":null,"photourl":null,"colors":[],"extras":[],"machinetype":"1","resolution":"120","express":"0"},{"id":"373","name":"ABS-Bassa Qualit\u00e0","description":"","max_size":{"length":"220","width":"220","height":"240"},"mShipdays":"0","wallthickness":null,"minPrice":null,"photourl":null,"colors":[],"extras":[],"machinetype":"1","resolution":"280","express":"0"},{"id":"374","name":"ABS-Normale","description":"","max_size":{"length":"220","width":"220","height":"240"},"mShipdays":"0","wallthickness":null,"minPrice":null,"photourl":null,"colors":[],"extras":[],"machinetype":"1","resolution":"200","express":"0"},{"id":"375","name":"ABS-Alta Qualit\u00e0","description":"","max_size":{"length":"220","width":"220","height":"240"},"mShipdays":"0","wallthickness":null,"minPrice":null,"photourl":null,"colors":[],"extras":[],"machinetype":"1","resolution":"120","express":"0"}]');
        function initSettings(){
            my_settings = JSON.parse('{"vat":"0","currency":"\u20ac","fdm_use_resolution":"0","fdm_use_infill":"1","fdm_use_slicing":"0","min_order_price":null,"use_modelinfo":"1","use_cart":"0","material_slider":"0","payments":"0","paypal":"","autoprice":"1","body_transparent":"1","body_color":"rgb(255, 255, 255)","panels_header":"rgba(245, 245, 245, 1)","panels_body":"rgba(255, 255, 255, 1)","viewer_transparent":"0","viewer_color":"rgba(137,137,141,1)","copywrite_text":"","banners":"1","maxfilesize":"16000000","material_slider_orientation":"0","quote_monthly_limit":"50"}');
            my_settings["SUPPORTFILETYPES"] = "stl,obj,zip";
            my_settings["MAXFILESIZE"]= 16000000;
        }

        function loadSession(){
            session=JSON.parse('[{"id":"upload-1","name":"xyzCalibration_cube.stl","filepath":"\/var\/www\/vhosts\/3dabax.com\/httpdocs\/calc\/tmp\/h1o8gf8s16j6pt1tuiufnmokk3\/upload-1","URL":"https:\/\/www.3dabax.com\/calc\/tmp\/h1o8gf8s16j6pt1tuiufnmokk3\/upload-1\/xyzCalibration_cube.stl","geoPath":"\/var\/www\/vhosts\/3dabax.com\/httpdocs\/calc\/tmp\/h1o8gf8s16j6pt1tuiufnmokk3\/upload-1\/geo\/temp.stl","geoURL":"https:\/\/www.3dabax.com\/calc\/tmp\/h1o8gf8s16j6pt1tuiufnmokk3\/upload-1\/geo\/temp.stl","filetype":"stl","filesize":"6,72 KB","raw_filesize":6884,"fixedPath":null,"fixedURL":null,"stats":{"triangles_count":136,"volume":7.788193359,"bbox":{"length":20,"width":20,"height":20},"bboxvolume":8,"area":27.01243164,"unit":"mm","solid":true,"shells":"1","ratio":0.97,"sidedown":"X","print_height":20},"order":{"color":"989","scale":"1","qty":"1","material":"371","thumb":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAisAAAH0CAYAAAD8Lm1PAAAcP0lEQVR4Xu3dwatcBxXA4fvyXpoWaQWrBYNKQexC6UJ04f+\/ciMu4kZctKhEFLoopZikSUdGEGpJmsx7d2Z+d87X9WTm3O+cxY9J38vVo0ePdov\/CBAgQIAAAQJRgSuxEt2MsQgQIECAAIH\/CogVh0CAAAECBAikBcRKej2GI0CAAAECBMSKGyBAgAABAgTSAmIlvR7DESBAgAABAmLFDRAgQIAAAQJpAbGSXo\/hCBAgQIAAAbHiBggQIECAAIG0gFhJr8dwBAgQIECAgFhxAwQIECBAgEBaQKyk12M4AgQIECBAQKy4AQIECBAgQCAtIFbS6zEcAQIECBAgIFbcAAECBAgQIJAWECvp9RiOAAECBAgQECtugAABAgQIEEgLiJX0egxHgAABAgQIiBU3QIAAAQIECKQFxEp6PYYjQIAAAQIExIobIECAAAECBNICYiW9HsMRIECAAAECYsUNECBAgAABAmkBsZJej+EIECBAgAABseIGCBAgQIAAgbSAWEmvx3AECBAgQICAWHEDBAgQIECAQFpArKTXYzgCBAgQIEBArLgBAgQIECBAIC0gVtLrMRwBAgQIECAgVtwAAQIECBAgkBYQK+n1GI4AAQIECBAQK26AAAECBAgQSAuIlfR6DEeAAAECBAiIFTdAgAABAgQIpAXESno9hiNAgAABAgTEihsgQIAAAQIE0gJiJb0ewxEgQIAAAQJixQ0QIECAAAECaQGxkl6P4QgQIECAAAGx4gYIECBAgACBtIBYSa\/HcAQIECBAgIBYcQMECBAgQIBAWkCspNdjOAIECBAgQECsuAECBAgQIEAgLSBW0usxHAECBAgQICBW3AABAgQIECCQFhAr6fUYjgABAgQIEBArboAAAQIECBBIC4iV9HoMR4AAAQIECIgVN0CAAAECBAikBcRKej2GI0CAAAECBMSKGyBAgAABAgTSAmIlvR7DESBAgAABAmLFDRAgQIAAAQJpAbGSXo\/hCBAgQIAAAbHiBggQIECAAIG0gFhJr8dwBAgQIECAgFhxAwQIECBAgEBaQKyk12M4AgQIECBAQKy4AQIECBAgQCAtIFbS6zEcAQIECBAgIFbcAAECBAgQIJAWECvp9RiOAAECBAgQECtugAABAgQIEEgLiJX0egxHgAABAgQIiBU3QIAAAQIECKQFxEp6PYYjQIAAAQIExIobIECAAAECBNICYiW9HsMRIECAAAECYsUNECBAgAABAmkBsZJej+EIECBAgAABseIGCBAgQIAAgbSAWEmvx3AECBAgQICAWHEDBAgQIECAQFpArKTXYzgCBAgQIEBArLgBAgQIECBAIC0gVtLrMRwBAgQIECAgVtwAAQIECBAgkBYQK+n1GI4AAQIECBAQK26AAAECBAgQSAuIlfR6DEeAAAECBAiIFTdAgAABAgQIpAXESno9hiNAgAABAgTEihsgQIAAAQIE0gJiJb0ewxEgQIAAAQJixQ0QIECAAAECaQGxkl6P4QgQIECAAAGx4gYIECBAgACBtIBYSa\/HcAQIECBAgIBYcQMECBAgQIBAWkCspNdjOAIECBAgQECsuAECBAgQIEAgLSBW0usxHAECBAgQICBW3AABAgQIECCQFhAr6fUYjgABAgQIEBArboAAAQIECBBIC4iV9HoMR4AAAQIECIgVN0CAAAECBAikBcRKej2GI0CAAAECBMSKGyBAgAABAgTSAmIlvR7DESBAgAABAmLFDRAgQIAAAQJpAbGSXo\/hCBAgQIAAAbHiBggQIECAAIG0gFhJr8dwBAgQIECAgFhxAwQIECBAgEBaQKyk12M4AgQIECBAQKy4AQIECBAgQCAtIFbS6zEcAQIECBAgIFbcAAECBAgQIJAWECvp9RiOAAECBAgQECtugAABAgQIEEgLiJX0egxHgAABAgQIiBU3QIAAAQIECKQFxEp6PYYjQIAAAQIExIobIECAAAECBNICYiW9HsMRIECAAAECYsUNECBAgAABAmkBsZJej+EIECBAgAABseIGCBAgQIAAgbSAWEmvx3AECBAgQICAWHEDBAgQIECAQFpArKTXYzgCBAgQIEBArLgBAgQIECBAIC0gVtLrMRwBAgQIECAgVtwAAQIECBAgkBYQK+n1GI4AAQIECBAQK26AAAECBAgQSAuIlfR6DEeAAAECBAiIFTdAgAABAgQIpAXESno9hiNAgAABAgTEihsgQIAAAQIE0gJiJb0ewxEgQIAAAQJixQ0QIECAAAECaQGxkl6P4QgQIECAAAGx4gYIECBAgACBtIBYSa\/HcAQIECBAgIBYcQMECBAgQIBAWkCspNdjOAIECBAgQECsuAECBAgQIEAgLSBW0usxHAECBAgQICBW3AABAgQIECCQFhAr6fUYjgABAgQIEBArboAAAQIECBBIC4iV9HoMR4AAAQIECIgVN0CAAAECBAikBcRKej2GI0CAAAECBMSKGyBAgAABAgTSAmIlvR7DESBAgAABAmLFDRAgQIAAAQJpAbGSXo\/hCBAgQIAAAbHiBggQIECAAIG0gFhJr8dwBAgQIECAgFhxAwQIECBAgEBaQKyk12M4AgQIECBAQKy4AQIECBAgQCAtIFbS6zEcAQIECBAgIFbcAAECBAgQIJAWECvp9RiOAAECBAgQECtugAABAgQIEEgLiJX0egxHgAABAgQIiBU3QIAAAQIECKQFxEp6PYYjQIAAAQIExIobIECAAAECBNICYiW9HsMRIECAAAECYsUNECBAgAABAmkBsZJej+EIECBAgAABseIGCBAgQIAAgbSAWEmvx3AECBAgQICAWHEDBAgQIECAQFpArKTXYzgCBAgQIEBArLgBAgQIECBAIC0gVtLrMRwBAgQIECAgVtwAAQIECBAgkBYQK+n1GI4AAQIECBAQK26AAAECBAgQSAuIlfR6DEeAAAECBAiIFTdAgAABAgQIpAXESno9hiNAgAABAgTEihsgQIAAAQIE0gJiJb0ewxEgQIAAAQJixQ0QIECAAAECaQGxkl6P4QgQIECAAAGx4gYIECBAgACBtIBYSa\/HcAQIECBAgIBYcQMECBAgQIBAWkCspNdjOAIECBAgQECsuAECBAgQIEAgLSBW0usxHAECBAgQICBW3AABAgQIECCQFhAr6fUYjgABAgQIEBArboAAAQIECBBIC4iV9HoMR4AAAQIECIgVN0CAAAECBAikBcRKej2GI0CAAAECBMSKGyBAgAABAgTSAmIlvR7DESBAgAABAmLFDRAgQIAAAQJpAbGSXo\/hCBAgQIAAAbHiBggQIECAAIG0gFhJr8dwBAgQIECAgFhxAwQIECBAgEBaQKyk12M4AgQIECBAQKy4AQIECBAgQCAtIFbS6zEcAQIECBAgIFbcAAECBAgQIJAWECvp9RiOAAECBAgQECtugAABAgQIEEgLiJX0egxHgAABAgQIiBU3QIAAAQIECKQFxEp6PYYjQIAAAQIExIobIECAAAECBNICYiW9HsMRIECAAAECYsUNECBAgAABAmkBsZJej+EIECBAgAABseIGCBAgQIAAgbSAWEmvx3AECBAgQICAWHEDBAgQIECAQFpArKTXYzgCBAgQIEBArLgBAgQIECBAIC0gVtLrMRwBAgQIECAgVtwAAQIECBAgkBYQK+n1GI4AAQIECBAQK26AAAECBAgQSAuIlfR6DEeAAAECBAiIFTdAgAABAgQIpAXESno9hiNAgAABAgTEihsgQIAAAQIE0gJiJb0ewxE4v8DfH3\/+2iGePnvx2tcc8wU\/ev97y3vvPjjmR3hvAgTOKCBWzojvowlsQeD3f\/hbfsyff\/iDZR8s\/iNA4DIFxMpl7tVTEVhNQKysRumNCBC4pYBYuSWcP0ZgioBYmbJpz0mgKyBWursxGYGEgFhJrMEQBEYLiJXR6\/fwBF4vsIVY+cmP31t+8vD7r38YryBAYJMCYmWTazM0gdMJiJXTWfskAgReLiBWXAYBAt8pcGisvPvu3b7hePr0yfLs2dODtuKblYO4vJjA5gTEyuZWZmACpxU4NFY+\/vi3y4MHt\/+dJ3\/+85+WL754\/e92+aaCWDntTfg0AqcWECunFvd5BDYmcGisfPjhL\/4vVp4+Pexbkk8\/\/cvBQmLlYDJ\/gMCmBMTKptZlWAKnFzg0Vg6ZcLf7erm6unfIH3npa8XKnQm9AYG0gFhJr8dwBM4vcKxY2YfKixcvlpub+3d+SLFyZ0JvQCAtIFbS6zEcgfMLHCtWnj\/\/atntdsv9+2\/d+SH3v2p\/\/yv3\/UeAwGUKiJXL3KunIrCKwNNnz5c\/PvrHKu\/1zTfZf6vy5Mm\/l3feWeff8xErq6\/IGxJICYiV1DoMQ6AlcKxYefbsyXLv3vUqfwW0FxMrrbsxDYG1BcTK2qLej8AFCRwjVtb+VkWsXNDBeRQCrxAQK06DAIFXChwjVvZ\/\/bP\/\/1Sur69Xk\/fNymqU3ohAUkCsJNdiKAINgbVjZf\/TP1999Wx5++13Vn1AsbIqpzcjkBMQK7mVGIhAR2DNWNn\/9c8+VK6v76\/6rYq\/Burci0kIHEtArBxL1vsSuACBNWNl\/6PKX3\/9YnnrrbdXl3nv3QfLLz\/6YPX39YYECDQExEpjD6YgkBRYK1b236rsf+3+\/t8MWuM31n4bS6wkz8dQBFYTECurUXojApcnsFas7P\/6Z\/\/fGr8A7mXKYuXybs8TEfimgFhxDwQIvFJgjVg5xo8q+2bF0RKYJSBWZu3b0xI4SGCNWNn\/qPLNzc1qvwDONysHrdCLCVyEgFi5iDV6CALHEbhrrOx\/VHn\/22rX+rX6r3pKfw10nP17VwIVAbFS2YQ5CAQF7horx\/gFcL5ZCR6KkQgcWUCsHBnY2xPYssBdYuWYP6r8bdMHb90sv\/74x1umNjsBAt8hIFacBwECrxS4bawc+0eVxYqjJTBLQKzM2renJXCQwG1j5dvfqjx8+NPl4cOfvdFnf\/LJX5bPPvvXG732fy\/yzcpBXF5MYHMCYmVzKzMwgdMJ3CZWXvajyu+\/\/8Hywx++2W+Yffz4b8sXX3x+0EOKlYO4vJjA5gTEyuZWZmACpxO4TazsfwJoHyw3N\/dPNqhYORm1DyJwFgGxchZ2H0pgGwK3iZVzPJlYOYe6zyRwOgGxcjprn0RgcwJbiZU97O9+89PN+RqYAIE3ExArb+bkVQRGCoiVkWv30ARyAmIltxIDEegIiJXOLkxCYLKAWJm8fc9O4DUCYsWJECBQEBArhS2YgUBUQKxEF2MsAsMExMqwhXtcAocI7Jab5Y+PHh\/yR+782gcP3r7Ve\/zqo\/du9ef8IQIE+gJipb8jExI4m8A+Vl5cPTzb5x\/ywTe7vx7ycq8lQGBDAmJlQ8syKoFTC2wnVp4vN7vTfgN06l34PAKTBcTK5O17dgKvERArToQAgYKAWClswQwEwgLPr97sHyA85yNcLU+W691h\/\/jhOef12QQIHCYgVg7z8moC4wTEyriVe2ACOQGxkluJgQi0BLYRK18u17vPWnCmIUBgNQGxshqlNyJwmQJi5TL36qkIbElArGxpW2YlcAaBLcTKvd3ny73l8zPo+EgCBE4hIFZOoewzCGxY4Pl\/f8\/KTfoJxEp6PYYjcGcBsXJnQm9A4LIFthErny33li8vexGejsBgAbEyePkencCbCGwhVq53\/1yulqdv8jheQ4DABgXEygaXZmQCpxQQK6fU9lkECLxMQKy4CwIEvlPgxdUHy2653T8ueCpa36ycStrnEDiPgFg5j7tPJbAZgW3EyuPlanm+GVODEiBwmIBYOczLqwmME9hCrPgXl8edpQceJiBWhi3c4xI4VECsHCrm9QQIrC0gVtYW9X4ELkzgxdX7y275Xvipni83u8fh+YxGgMBdBcTKXQX9eQIXLrCL\/0K4Pb\/\/X+XCj9DjjRcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm0BsdLej+kIECBAgMB4AbEy\/gQAECBAgACBtoBYae\/HdAQIECBAYLyAWBl\/AgAIECBAgEBbQKy092M6AgQIECAwXkCsjD8BAAQIECBAoC0gVtr7MR0BAgQIEBgvIFbGnwAAAgQIECDQFhAr7f2YjgABAgQIjBcQK+NPAAABAgQIEGgLiJX2fkxHgAABAgTGC4iV8ScAgAABAgQItAXESns\/piNAgAABAuMFxMr4EwBAgAABAgTaAmKlvR\/TESBAgACB8QJiZfwJACBAgAABAm2B\/wAz+VvNjhJG1QAAAABJRU5ErkJggg==","weight":7.34953466775,"infill":"20","volume":7.788193359,"bboxvolume":8,"area":27.01243164,"extras":[],"price":0.68051246923611,"extra":0,"discount":0,"trueprice":0.68051246923611,"printtime":0.34025623461806,"materialcost":0.1322916240195},"texture":null,"thumb":null}]');
            for (var i=0, len=session.length; i<len; ++i) {
                items.push(session[i]);
            }

            session=JSON.parse('[]');
            for (var i=0, len=session.length; i<len; ++i) {
                cart.push(session[i]);
            }
        }

        initSettings();
        loadSession();

    </script>
    <style type="text/css">
        <!-- BODY { background:none transparent; }-->

        
                #itemCanvasContainer, .thumb-container{
            background-image:radial-gradient(ellipse at center, rgba(137,137,141,1) 0%, #404040 100%);
        }
        
        
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div id="itemCanvasContainer">

    <div id="fileDropTarget" class="dropTarget" style="width: 555px; height: 500px;">
        <span><h1>Drop File</h1></span>
    </div>

    <canvas id="itemCanvas3d" width="555" height="500" style="width: 555px; height: 500px;"></canvas>

    <div class="well" id="messagePanel"></div>

    <div class="viewer-icons">
        <img src="https://www.3dabax.com/calc/images/rottate-left-button.png">
        <img src="https://www.3dabax.com/calc/images/zoom-middle-button.png">
        <div id="clipping-slider" style="height:80px;margin-top:30px"></div>
       <!-- <img src="images/pan-right-mouse-button.png" style="margin-left: -4px;"> -->
    </div>

    <div id="axes" style="display:none"></div>

    <div class="viewer-tools">

        <div class="viewer-toolbar">

            <div class="viewer-toolbar-item">
                <a href="#" id="wireframeChk" data-toggle="tooltip" title="" onclick="viewer.toggleWireframe();return false;" data-original-title="Wireframe"> <img src="https://www.3dabax.com/calc/images/wireframe.png"> </a>
            </div>

            <div class="viewer-toolbar-item">
                <a href="#" id="dimensionChk" data-toggle="tooltip" title="" onclick="dimensionToggle();return false;" data-original-title="Dimensions"> <img src="https://www.3dabax.com/calc/images/dimension.png"> </a>
            </div>

            <div class="viewer-toolbar-item">
                <a href="#" id="axisChk" data-toggle="tooltip" title="" onclick="viewer.showAxis();return false;" data-original-title="Axes"> <img src="https://www.3dabax.com/calc/images/axes.png"> </a>
            </div>

            <div class="viewer-toolbar-items-group">

                <div class="viewer-toolbar-group-item">
                    <a href="#" id="frontView" data-toggle="tooltip" title="" onclick="viewer.cameraView(&quot;front&quot;, false);return false;" data-original-title="Front View"> <img src="https://www.3dabax.com/calc/images/view_front.png" style="width:22px; height:22px"> </a>
                </div>

                <div class="viewer-toolbar-group-item">
                    <a href="#" id="bottomView" data-toggle="tooltip" title="" onclick="viewer.cameraView(&quot;bottom&quot;, false);return false;" data-original-title="Bottom View"> <img src="https://www.3dabax.com/calc/images/view_bottom.png" style="width:22px; height:22px"> </a>
                </div>
    
                <div class="viewer-toolbar-group-item">
                    <a href="#" id="bottomView" data-toggle="tooltip" title="" onclick="viewer.cameraView(&quot;top&quot;, false);return false;" data-original-title="Top View"> <img src="https://www.3dabax.com/calc/images/view_top.png" style="width:22px; height:22px"> </a>
                </div>

                <div class="viewer-toolbar-group-item">
                    <a href="#" id="leftView" data-toggle="tooltip" title="" onclick="viewer.cameraView(&quot;left&quot;, false);return false;" data-original-title="Left View"> <img src="https://www.3dabax.com/calc/images/view_left.png" style="width:22px; height:22px"> </a>
                </div>

                <div class="viewer-toolbar-group-item">
                    <a href="#" id="rightView" data-toggle="tooltip" title="" onclick="viewer.cameraView(&quot;right&quot;, false);return false;" data-original-title="Right View"> <img src="https://www.3dabax.com/calc/images/view_right.png" style="width:22px; height:22px"> </a>
                </div>

                <div class="viewer-toolbar-group-item">
                    <a href="#" id="backView" data-toggle="tooltip" title="" onclick="viewer.cameraView(&quot;back&quot;, false);return false;" data-original-title="Back View"> <img src="https://www.3dabax.com/calc/images/view_back.png" style="width:22px; height:22px"> </a>
                </div>

            </div>

            <div class="viewer-toolbar-items-group-right">
                <div class="viewer-toolbar-item">
                    <a href="#" id="snapshot" data-toggle="tooltip" title="" onclick="snapshot();return false;" data-original-title="Take Snapshot"> <img src="https://www.3dabax.com/calc/images/snapshot.png"> </a>
                </div>
                <div class="viewer-toolbar-group-item">
                    <a href="#" id="fullscreen" data-toggle="tooltip" title="" onclick="viewer.fullScreen();return false;" data-original-title="Fullscreen"> <img src="https://www.3dabax.com/calc/images/fullscreen.png"> </a>
                </div>
                <div class="viewer-toolbar-group-item" id="floor-btn">
                    <a href="#" id="floor" data-toggle="tooltip" title="" onclick="floorToggle();return false;" data-original-title="Floor"> <img src="https://www.3dabax.com/calc/images/floor.png"> </a>
                </div>
                                <div class="viewer-toolbar-group-item">
                    <a href="#" id="lamp" data-toggle="tooltip" title="" onclick="lightToggle();return false;" data-original-title="Light"> <img src="https://www.3dabax.com/calc/images/lightbulb.png" style="padding-bottom:4px"> </a>
                </div>
                
            </div>

        </div>

    </div>
</div>

<div class="thumb-container dropTarget"><img id="thumb-img" width="100%"></div>

<script>
    var background = 'dark';

    function lightToggle(){
        if (background == 'dark') {
            $("#itemCanvasContainer").css('background-image', 'radial-gradient(ellipse at center, #ebeff4 0%, #89898d 100%)');
            background = 'light';
        }else if (background == 'light'){
            $("#itemCanvasContainer").css('background-image', 'radial-gradient(ellipse at center, rgba(137,137,141,1) 0%, #404040 100%)');
            background = 'dark';
        }
    }

    function floorToggle(){
        showFloor = !showFloor;
        setupFloor();
    }
</script>


        </div>
        <div class="col-md-6" id="controls">
            
<div class="row">
    <div class="col-md-10">
        <div id="fileDropTarget2" class="dropTarget">
            <span class="btn btn-primary fileinput-button">
                <i class="fas fa-plus"></i>
                <span>Upload</span>
                <input id="fileupload" type="file" name="files[]" multiple="">
            </span>
            <span><b>Drag &amp; Drop Files (Max 16MB)</b></span>
            <span class="fas fa-question-circle" data-toggle="tooltip" data-html="true" title="" id="fileuploadertip" data-placement="right" style="margin-left:5px;" data-original-title="stl,obj">
            </span>
            <script>$("#fileuploadertip").tooltip();</script>

            <div id="progress" class="progress" style="margin-top:10px;">
                <div class="progress-bar progress-bar-success"></div>
            </div>
        </div>
    </div>

    <div class="col-md-2">
            </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default settings-panel">
            <div class="panel-heading">
                <span>Settings</span>
                <button type="button" class="btn btn-primary" id="filesBtn" onclick="loadDialog('File manager','https://www.3dabax.com/calc/filemanager.php', 'size-wide')">
                    <span class="fas fa-file" aria-hidden="true"></span>
                    <span id="filesBtn-title">Files Manager</span>
                    <span class="badge" id="filesbadge">1</span>
                </button>
                                <button type="button" class="btn btn-info" id="statsBtn" onclick="loadDialog('<span class=\'fas fa-info-circle\'></span> Model Info','https://www.3dabax.com/calc/filestats.php')">
                    <span class="fas fa-info-circle"></span>
                    <span id="filesBtn-title">Info</span>
                </button>
                
                <button type="button" class="btn btn-warning" id="fixBtn" onclick="fixCurrent(currentitem.id)" style="float: right" disabled="">
                    <span class="fas fa-wrench" aria-hidden="true"></span>
                    <span id="filesBtn-title">Fix</span>
                </button>
                <button type="button" class="btn btn-warning" id="undoBtn" onclick="undoFix(currentitem.id)" style="float: right; margin-right:5px; display:none">
                    <span class="fas fa-undo" aria-hidden="true"></span>
                    <span id="filesBtn-title">Undo Fix</span>
                </button>
            </div>
            <div class="panel-body">
                <table class="table print-settings" style="table-layout: fixed !important;">
                    <tbody><tr id="material-row">
                        <td style="text-align:right;width:120px;padding-top:12px;"><label for="material-select">Material:</label></td>
                        <td style="text-align:right;"><select class="selectii form-control select2-hidden-accessible" id="material-select" style="width:100%" tabindex="-1" aria-hidden="true"><option value="370">PLA-Bassa Qualità - 280 microns - </option><option value="371">PLA-Normale - 200 microns - </option><option value="372">PLA-Alta Qualità - 120 microns - </option><option value="373">ABS-Bassa Qualità - 280 microns - </option><option value="374">ABS-Normale - 200 microns - </option><option value="375">ABS-Alta Qualità - 120 microns - </option></select><span class="select2 select2-container select2-container--bootstrap" dir="ltr" style="width: 100%;" data-original-title="" title=""><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-material-select-container"><span class="select2-selection__rendered" id="select2-material-select-container" title="PLA-Bassa Qualità - 280 microns - ">PLA-Bassa Qualità - 280 microns - </span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></td>
                    </tr>
                    <tr id="color-row">
                        <td style="text-align:right;padding-top:12px;"><label for="color-select">Color:</label></td>
                        <td style="text-align:right;"><select class="selectii form-control select2-hidden-accessible" id="color-select" style="width:100%" tabindex="-1" aria-hidden="true"></select><span class="select2 select2-container select2-container--bootstrap" dir="ltr" style="width: 100%;" data-original-title="" title=""><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-color-select-container"><span class="select2-selection__rendered" id="select2-color-select-container"></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></td>
                    </tr>
                                                            <tr id="infill-row">
                        <td style="text-align:right;padding-top:12px;"><label for="infill-select">Infill:</label></td>
                        <td style="text-align:right;"><select class="selectii form-control select2-hidden-accessible" id="infill-select" style="width:100%" tabindex="-1" aria-hidden="true">
                                <option value="20" selected="">20%</option>
                                <option value="40">40%</option>
                                <option value="60">60%</option>
                                <option value="80">80%</option>
                                <option value="100">100%</option>
                            </select><span class="select2 select2-container select2-container--bootstrap" dir="ltr" style="width: 100%;" data-original-title="" title=""><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-infill-select-container"><span class="select2-selection__rendered" id="select2-infill-select-container" title="20%">20%</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></td>
                    </tr>
                                        <tr id="extra-row" style="display: none;">
                        <td style="text-align:right;padding-top:12px;"><label for="extra-select">Extra:</label></td>
                        <td style="text-align:right;"><select class="selectii form-control select2-hidden-accessible" id="extra-select" multiple="" style="width:100%" tabindex="-1" aria-hidden="true"></select><span class="select2 select2-container select2-container--bootstrap" dir="ltr" style="width: 100%;" data-original-title="" title=""><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" role="textbox" aria-autocomplete="list" placeholder="" style="width: 0.75em;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></td>
                    </tr>
                    <tr class="scale-row">
                        <td style="text-align:right;padding-top:17px;"><button class="btn btn-xs" title="reset size" onclick="calcScale(1,1)"><i class="fas fa-redo"></i></button><label>Size(mm):</label></td>
                        <td style="text-align:right;">
                            <table class="table table-condensed" style="background-color:inherit">
                                <tbody>
                                    <tr>
                                        <td><input type="number" value="" id="length" class="form-control" onchange="calcScale(currentitem.stats.bbox['length'], this.value)" data-toggle="tooltip" title="" data-original-title="mm"></td>
                                        <td><input type="number" value="" id="width" class="form-control" onchange="calcScale(currentitem.stats.bbox['width'], this.value)" data-toggle="tooltip" title="" data-original-title="mm"></td>
                                        <td><input type="number" value="" id="height" class="form-control" onchange="calcScale(currentitem.stats.bbox['height'], this.value)" data-toggle="tooltip" title="" data-original-title="mm"></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right;padding-top:12px;" colspan="2"><span>Model units:</span></td>
                                        <td><select id="metric" class="form-control" onchange="convertToMM();" data-toggle="tooltip" title="" data-original-title="convert to mm from">
                                                <option value="mm" selected="">mm</option>
                                                <option value="inch">inch</option>
                                                <option value="meter">meter</option>
                                                <option value="cm">cm</option>
                                            </select>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <input type="hidden" value="" id="scale">
                            <input type="hidden" value="" id="volume">
                        </td>
                    </tr>
                </tbody></table>
            </div>
        </div>
    </div>
</div>

<div class="row" id="price_controls" style="padding-left: 15px; padding-right: 15px;">
    <div class="panel panel-default price-controls">
        <div class="panel-body">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="qty">Quantity</label>

                    <div class="input-group">
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default" data-value="decrease" data-target="#qty" data-toggle="spinner">
                                        <span class="fas fa-minus"></span>
                                    </button>
                                </span>
                        <input type="text" data-min="1" data-ride="spinner" id="qty" class="form-control input-number" value="1" onchange="updateQty(this.value)">
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default" data-value="increase" data-target="#qty" data-toggle="spinner">
                                        <span class="fas fa-plus"></span>
                                    </button>
                                </span>
                    </div>
                </div>
            </div>
                            <div class="col-md-4">
                    <div class="form-group">
                        <label for="price">Price</label>
                        <div class="input-group">
                            <input id="price" value="0.0" readonly="" class="form-control">
                            <div class="input-group-addon">€</div>
                        </div>
                        <span class="help-block">Tax is not included</span>
                    </div>
                </div>
                        <div class="col-md-4">
                                <div style="margin-top:20px">
                                        <button id="cartBtn" type="button" class="btn btn-success btn-lg btn-block" disabled="disabled" onclick="sentToCart(currentitem.id)">Add to cart</button>
                                    </div>
                            </div>
        </div>
    </div>
</div>        </div>
    </div>

    
    <form action="https://www.3dabax.com/calc/order.php" method="post" id="orderForm"></form>

<!-- Footer -->
<div class="footer">
    <div class="row">
        <div class="col-xs-6">
                            <p>COPYRIGHT © 2017 PLANFAB.EU. ALL RIGHTS RESERVED.</p>
                    </div>
        <div class="col-xs-6">
            <div class="footer-right">
                <p>Powered by <a href="http://www.3dabax.com">3D ABAX</a>.</p>
            </div>
        </div>
    </div>
</div>
<!-- /.Footer -->
</div>

<script src="https://www.3dabax.com/calc/libs/jQuery-File-Upload/js/vendor/jquery.ui.widget.js"></script>
<script src="https://www.3dabax.com/calc/libs/jQuery-File-Upload/js/jquery.fileupload.js"></script>
    
<script src="https://www.3dabax.com/calc/libs/noUiSlider/nouislider.min.js"></script>
<script src="https://www.3dabax.com/calc/libs/jquery.blockUI.min.js"></script>
<script src="https://www.3dabax.com/calc/libs/bootstrap-spinner.min.js"></script>
<script src="https://www.3dabax.com/calc/libs/Tween.js"></script>
<script src="https://www.3dabax.com/calc/libs/select2/js/select2.min.js"></script>

<script src="https://www.3dabax.com/calc/libs/datatables/datatables.min.js" type="text/javascript"></script>

<script src="https://www.3dabax.com/calc/libs/bootstrap3-dialog/js/bootstrap-dialog.min.js" type="text/javascript"></script>
<script src="https://www.3dabax.com/calc/libs/jQuery-contextMenu/jquery.ui.position.min.js" type="text/javascript"></script>
<script src="https://www.3dabax.com/calc/libs/jQuery-contextMenu/jquery.contextMenu.min.js" type="text/javascript"></script>

<script src="https://www.3dabax.com/calc/libs/three.js-r92/build/three.min.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/loaders/STLLoader.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/loaders/OBJLoader.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/loaders/MTLLoader.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/loaders/PLYLoader.js"></script>
<script src="https://www.3dabax.com/calc/libs/VRMLLoader.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/controls/OrbitControls.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/controls/TrackballControls.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/controls/TransformControls.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/Detector.js"></script>

<!--
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/renderers/CanvasRenderer.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/renderers/Projector.js"></script>
<script src="https://www.3dabax.com/calc/libs/three.js-r92/examples/js/ui.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/3DView/measurements/MeasurementControls.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/3DView/measurements/Measurement.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/3DView/measurements/Measurement.Distance.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/3DView/measurements/Measurement.Thickness.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/3DView/measurements/Measurement.Angle.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/3DView/measurements/Measurement.Radius.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/3DView/measurements/Measurement.Info.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/3DView/3DView.Measurements.js"></script>
-->

<!--
<script src="https://www.3dabax.com/calc/js/viewer/viewer.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/loader.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/initViewer.js"></script>
<script src="https://www.3dabax.com/calc/js/printability.js"></script>
-->

<script src="https://www.3dabax.com/calc/js/viewer/viewer.min.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/loader.min.js"></script>
<script src="https://www.3dabax.com/calc/js/viewer/initViewer.min.js"></script>
<script src="https://www.3dabax.com/calc/js/printability.min.js"></script>


<script src="https://www.3dabax.com/calc/js/upload.js"></script>
<script src="https://www.3dabax.com/calc/js/helper.js"></script>
<script src="https://www.3dabax.com/calc/js/main.js"></script>



<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>