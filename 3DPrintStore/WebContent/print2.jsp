<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
 <link rel="stylesheet" href="https://3daddict.com/tool/assets/css/bootstrap.css">
    <link href="https://3daddict.com/tool/assets/css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Pacifico|Roboto|Saira|Droid+Sans|Source+Sans+Pro" rel="stylesheet">
    <link href="https://3daddict.com/tool/assets/css/Madeleine.css" rel="stylesheet">
    <script src="https://3daddict.com/tool/assets/js/stats.js"></script>
    <script src="https://3daddict.com/tool/assets/js/detector.js"></script>
    <script src="https://3daddict.com/tool/assets/js/three.min.js"></script>
    <script src="https://3daddict.com/tool/assets/js/Madeleine.js"></script>
    <script src="https://3daddict.com/tool/assets/js/light.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/vaakash/socializer/a4c672bf/css/socializer.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <!--MODAL-->
    <style>
        .loader {
            color: #343a41;
            font-size: 20px;
            margin: 100px auto;
            width: 1em;
            height: 1em;
            border-radius: 50%;
            position: relative;
            text-indent: -9999em;
            -webkit-animation: load4 1.3s infinite linear;
            animation: load4 1.3s infinite linear;
            -webkit-transform: translateZ(0);
            -ms-transform: translateZ(0);
            transform: translateZ(0);
        }

        @-webkit-keyframes load4 {
            0%,
            100% {
                box-shadow: 0 -3em 0 0.2em, 2em -2em 0 0em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 0;
            }
            12.5% {
                box-shadow: 0 -3em 0 0, 2em -2em 0 0.2em, 3em 0 0 0, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 -1em;
            }
            25% {
                box-shadow: 0 -3em 0 -0.5em, 2em -2em 0 0, 3em 0 0 0.2em, 2em 2em 0 0, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 -1em;
            }
            37.5% {
                box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0em 0 0, 2em 2em 0 0.2em, 0 3em 0 0em, -2em 2em 0 -1em, -3em 0em 0 -1em, -2em -2em 0 -1em;
            }
            50% {
                box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 0em, 0 3em 0 0.2em, -2em 2em 0 0, -3em 0em 0 -1em, -2em -2em 0 -1em;
            }
            62.5% {
                box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 0, -2em 2em 0 0.2em, -3em 0 0 0, -2em -2em 0 -1em;
            }
            75% {
                box-shadow: 0em -3em 0 -1em, 2em -2em 0 -1em, 3em 0em 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 0, -3em 0em 0 0.2em, -2em -2em 0 0;
            }
            87.5% {
                box-shadow: 0em -3em 0 0, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 0, -3em 0em 0 0, -2em -2em 0 0.2em;
            }
        }

        @keyframes load4 {
            0%,
            100% {
                box-shadow: 0 -3em 0 0.2em, 2em -2em 0 0em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 0;
            }
            12.5% {
                box-shadow: 0 -3em 0 0, 2em -2em 0 0.2em, 3em 0 0 0, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 -1em;
            }
            25% {
                box-shadow: 0 -3em 0 -0.5em, 2em -2em 0 0, 3em 0 0 0.2em, 2em 2em 0 0, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 -1em;
            }
            37.5% {
                box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0em 0 0, 2em 2em 0 0.2em, 0 3em 0 0em, -2em 2em 0 -1em, -3em 0em 0 -1em, -2em -2em 0 -1em;
            }
            50% {
                box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 0em, 0 3em 0 0.2em, -2em 2em 0 0, -3em 0em 0 -1em, -2em -2em 0 -1em;
            }
            62.5% {
                box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 0, -2em 2em 0 0.2em, -3em 0 0 0, -2em -2em 0 -1em;
            }
            75% {
                box-shadow: 0em -3em 0 -1em, 2em -2em 0 -1em, 3em 0em 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 0, -3em 0em 0 0.2em, -2em -2em 0 0;
            }
            87.5% {
                box-shadow: 0em -3em 0 0, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 0, -3em 0em 0 0, -2em -2em 0 0.2em;
            }
        }

        .loader {
            position: absolute;
            top: 300px;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 1, 0, 1);
            z-index: 9999;

        }

    </style>
<style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-12.5%}.svg-inline--fa.fa-lg{vertical-align:-25%}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{top:auto;width:1.875em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-12.5%;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.33333em;line-height:.75em;vertical-align:-15%}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:1.875em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-1.875em;position:absolute;text-align:center;top:.14286em;width:1.875em}.fa-li.fa-lg{left:-1.625em}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1em}.svg-inline--fa.fa-stack-2x{height:2em;width:2em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}</style><style></style><style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-12.5%}.svg-inline--fa.fa-lg{vertical-align:-25%}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{top:auto;width:1.875em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-12.5%;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.33333em;line-height:.75em;vertical-align:-15%}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:1.875em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-1.875em;position:absolute;text-align:center;top:.14286em;width:1.875em}.fa-li.fa-lg{left:-1.625em}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1em}.svg-inline--fa.fa-stack-2x{height:2em;width:2em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}</style></head>
<body>
   
   
    <!--START CONTENT-->

    <section class="page_header" style="margin: 5px 15px 5px 15px;">
        <h1>3D Printing Price Cost Calculator Tool</h1>
        <p class="body_content">This tool is designed to help calculate the "actual" cost and profit a 3D Printed part
            <br>To use the 3D Printing Calculator enter the values below and upload you STL file. The calculator will slice your file and estimate the values needed to calcutae the cost of the print.
            <br>To fine tune and adjust the data below click on the setting button and adjust as needed.
        </p>
    </section>
    <div class="row">
        <div class="col-md-3">
            <nav id="sidebar_left">
                <!-- Sidebar Header -->
                <div class="sidebar-header"> </div>
                <!-- Modal -->
                <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
                            </div>
                            <div class="modal-body">
                                <div id="loader"></div>
                                <div class="modal-body">
                                    <h4>Calculator Settings</h4>
                                    <h6>Adjust the Material Density</h6>
                                    <table class="table table-bordered table-sm">
                                        <thead>
                                            <tr>
                                                <th scope="col">Material</th>
                                                <th scope="col">Density</th>
                                                <th scope="col">Units</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td scope="row">PLA</td>
                                                <td><input type="number" class="span1" name="PLA" value="1.24"></td>
                                                <td>g/cm^3</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">ABS</td>
                                                <td><input type="number" class="span1" name="ABS" value="1.03"></td>
                                                <td>g/cm^3</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">OTHER</td>
                                                <td><input type="number" class="span1" name="Other" value="0.00"></td>
                                                <td>g/cm^3</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <h6>Adjust Parts and Prices that wear on your 3D Printer</h6>
                                    <p>Customize the data below for price and Wear/kg). Wear/kg is measured in estimated wear per kilogram. For example you should lubricate your linear rods every 100 kilograms.</p>
                                    <table class="table table-bordered table-sm">
                                        <thead style="background-color: #EEE;">
                                            <tr>
                                                <th scope="col">Maintainance</th>
                                                <th scope="col">Price</th>
                                                <th scope="col">Wear/kg</th>
                                                <th scope="col">Wear(kg)/$</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td scope="row">Throat</td>
                                                <td><input class="span1 m" name="p1" id="p1" type="number"></td>
                                                <td><input class="span1 m" name="w1" id="w1" type="number"> </td>
                                                </td><td class="m2" name="ratio" id="r1">0.003</td>
                                            </tr>
                                            <tr>
                                                <td scope="row">Heater Block</td>
                                                <td><input class="span1 m" name="2" id="p2" type="number"></td>
                                                <td><input class="span1 m" name="2" id="w2" type="number"></td>
                                                <td class="m2" name="ratio" id="r2">0.001</td>
                                            </tr>
                                            <tr>
                                                <td>Heater Cartridge</td>
                                                <td><input class="span1 m" name="p1" id="p3" type="number"></td>
                                                <td><input class="span1 m" name="w1" id="w3" type="number"></td>
                                                <td class="m2" name="ratio" id="r3">0.002</td>
                                            </tr>
                                            <tr>
                                                <td>Thermistor</td>
                                                <td><input class="span1 m" name="2" id="p4" type="number"></td>
                                                <td><input class="span1 m" name="2" id="w4" type="number"></td>
                                                <td class="m2" name="ratio" id="r4">0.002</td>
                                            </tr>
                                            <tr>
                                                <td>Lubrication</td>
                                                <td><input class="span1 m" name="p1" id="p5" type="number"></td>
                                                <td><input class="span1 m" name="w1" id="w5" type="number"></td>
                                                <td class="m2" name="ratio" id="r5">0.035</td>
                                            </tr>
                                            <tr>
                                                <td>Belts</td>
                                                <td><input class="span1 m" name="2" id="p6" type="number"></td>
                                                <td><input class="span1 m" name="2" id="w6" type="number"></td>
                                                <td class="m2" name="ratio" id="r6">0.000</td>
                                            </tr>
                                            <tr>
                                                <td>T8 Nut</td>
                                                <td><input class="span1 m" name="p1" id="p7" type="number"></td>
                                                <td><input class="span1 m" name="w1" id="w7" type="number"></td>
                                                <td class="m2" name="ratio" id="r7">0.001</td>
                                            </tr>
                                            <tr>
                                                <td>Threaded Rods</td>
                                                <td><input class="span1 m" name="2" id="p8" type="number"></td>
                                                <td><input class="span1 m" name="2" id="w8" type="number"></td>
                                                <td class="m2" name="ratio" id="r8">0.003</td>
                                            </tr>
                                            <tr>
                                                <td>Linear Bearings</td>
                                                <td><input class="span1 m" name="p1" id="p9" type="number"></td>
                                                <td><input class="span1 m" name="w1" id="w9" type="number"></td>
                                                <td class="m2" name="ratio" id="r9">0.001</td>
                                            </tr>
                                            <tr class="success lead">
                                                <td class="span2" colspan="3" style="text-align: right;">Total Wear/kg $</td>
                                                <td id="totalWearSetting">0.048</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <h6>Adjust Price for Bed Adheision Materials</h6>
                                    <p>Customize the data below for price and Wear/kg. Wear/kg is measured in estimated wear per kilogram. For example blue tape should be repalced every 10 kilograms (spools).</p>
                                    <table class="table table-bordered table-sm">
                                        <thead style="background-color: #EEE;">
                                            <tr>
                                                <th scope="col">Bed Adhesion</th>
                                                <th scope="col">Price</th>
                                                <th scope="col">Wear/kg</th>
                                                <th scope="col">Wear(kg)/$</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Turn Off</td>
                                                <td><input class="span1 bedAdhesion" type="number" id="bap1" value="0.00"></td>
                                                <td><input class="span1 bedAdhesion" type="number" id="baw1" value="1"></td>
                                                <td class="bedAdhesion2" id="bar1" name="Turn Off">0.00</td>
                                            </tr>
                                            <tr>
                                                <td>Blue Tape</td>
                                                <td><input class="span1 bedAdhesion" type="number" id="bap2" value="4.97"></td>
                                                <td><input class="span1 bedAdhesion" type="number" id="baw2" value="10"></td>
                                                <td class="bedAdhesion2" id="bar2" name="Blue Tape">0.50</td>
                                            </tr>
                                            <tr>
                                                <td>Glue Stick</td>
                                                <td><input class="span1 bedAdhesion" type="number" id="bap3" value="1.99"></td>
                                                <td><input class="span1 bedAdhesion" type="number" id="baw3" value="20"></td>
                                                <td class="bedAdhesion2" id="bar3" name="Glue Stick">0.10</td>
                                            </tr>
                                            <tr>
                                                <td>Kapton Sheet</td>
                                                <td><input class="span1 bedAdhesion" type="number" id="bap4" value="1.92"></td>
                                                <td><input class="span1 bedAdhesion" type="number" id="baw4" value="10"></td>
                                                <td class="bedAdhesion2" id="bar4" name="Kapton Sheet">0.19</td>
                                            </tr>
                                            <tr>
                                                <td>PEI Sheet 3M</td>
                                                <td><input class="span1 bedAdhesion" type="number" id="bap5" value="16.95"></td>
                                                <td><input class="span1 bedAdhesion" type="number" id="baw5" value="25"></td>
                                                <td class="bedAdhesion2" id="bar5" name="PEI Sheet 3M">0.68</td>
                                            </tr>
                                            <tr>
                                                <td>BuildTak</td>
                                                <td><input class="span1 bedAdhesion" type="number" id="bap6" value="8.19"></td>
                                                <td><input class="span1 bedAdhesion" type="number" id="baw6" value="10"></td>
                                                <td class="bedAdhesion2" id="bar6" name="BuildTak">0.82</td>
                                            </tr>
                                            <tr>
                                                <td>Other</td>
                                                <td><input class="span1 bedAdhesion" type="number" id="bap7" value="0.00"></td>
                                                <td><input class="span1 bedAdhesion" type="number" id="baw7" value="1"></td>
                                                <td id="bar7" class="bedAdhesion2" name="Other">0.00</td>
                                            </tr>
                                            <tr class="success lead">
                                                <td class="span2" colspan="3" style="text-align: right;">Bed Adheistion Wear(kg)/$ Selected</td>
                                                <td id="selectedBA">0.50</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <button class="btn btn-success btn btn-large" data-dismiss="modal" id="ok">OK</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <section>
                    <form id="form1">
                        <div class="row">
                            <div class="col-6 text-right">
                                <label class="lead" for="material">Material</label>
                            </div>
                            <div class="col-6 text-left">
                                <select id="material" name="material" class="span2">
                <option value="PLA">PLA</option>
                <option value="ABS">ABS</option>
                <option value="Other">Other</option>
            </select>
                                <span class="lead"><span class="lead" id="selectedMaterial">1.24</span>g/cm^3</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 text-right">
                                <label class="lead" for="layerHeight">Layer Height</label>
                            </div>
                            <div class="col-6 text-left">
                                <input class="span1" name="layerHeight" id="layerHeight" type="number" step="any" min="0.1" max="1.2" value="0.2">
                                <span class="lead">mm</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 text-right">
                                <label class="lead" for="infillPercentage">Infill Percentage</label>
                            </div>
                            <div class="col-6 text-left">
                                <input class="span1" name="infillPercentage" id="infillPercentage" type="number" min="0" max="100" value="20">
                                <span class="lead">%</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 text-right">
                                <label class="lead" for="printSpeed">Print Speed</label>
                            </div>
                            <div class="col-6 text-left">
                                <input class="span1" id="printSpeed" type="number" min="1" max="100" value="60">
                                <span class="lead">mm/s</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center" id="fileSelector">
                                <input type="file" name="stlFiles[]" class="stlFile" id="stlFiles[]">
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <span style="font-size: 12px;">We do not store your files on our server</span>
                        </div>
                        <div class="row" style="margin: 15px 0px 15px 0px;">
                            <div class="col text-center">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" id="settings" data-toggle="modal" data-target=".bd-example-modal-lg">Settings</button>
                                <button class="btn btn-warning" type="button" id="reset"><i class="icon-cog icon-white"></i> Reset</button>
                                <div id="response"></div>
                            </div>
                        </div>
                    </form>

                </section>

                <section>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="estPrintTime">Est. Print Time</label>
                        </div>
                        <div class="col-6 text-left">
                            <input class="span1" id="estPrintTime" type="number">
                            <span class="lead">hours</span><svg class="svg-inline--fa fa-info-circle fa-w-16" style="margin-bottom: 5px; font-size: 12px;" href="#" data-toggle="tooltip" data-placement="right" title="" aria-labelledby="svg-inline--fa-title-1" data-fa-replacement="true" data-prefix="fal" data-icon="info-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-original-title="This value is generated using the cura slicer by uploading an stl file above."><title id="svg-inline--fa-title-1">This value is generated using the cura slicer by uploading an stl file above.</title><path fill="currentColor" d="M256 40c118.621 0 216 96.075 216 216 0 119.291-96.61 216-216 216-119.244 0-216-96.562-216-216 0-119.203 96.602-216 216-216m0-32C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm-36 344h12V232h-12c-6.627 0-12-5.373-12-12v-8c0-6.627 5.373-12 12-12h48c6.627 0 12 5.373 12 12v140h12c6.627 0 12 5.373 12 12v8c0 6.627-5.373 12-12 12h-72c-6.627 0-12-5.373-12-12v-8c0-6.627 5.373-12 12-12zm36-240c-17.673 0-32 14.327-32 32s14.327 32 32 32 32-14.327 32-32-14.327-32-32-32z"></path></svg><!-- <i class="fal fa-info-circle" style="margin-bottom: 5px; font-size: 12px;" href="#" data-toggle="tooltip" data-placement="right" title="This value is generated using the cura slicer by uploading an stl file above."></i> -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="filamentNeeded">Filament Needed</label>
                        </div>
                        <div class="col-6 text-left">
                            <input class="span1" id="filamentNeeded" type="number">
                            <span class="lead">grams</span><svg class="svg-inline--fa fa-info-circle fa-w-16" style="margin-bottom: 5px; font-size: 12px;" href="#" data-toggle="tooltip" data-placement="right" title="This value is generated using the cura slicer by uploading an stl file above." aria-labelledby="svg-inline--fa-title-2" data-fa-replacement="true" data-prefix="fal" data-icon="info-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><title id="svg-inline--fa-title-2">This value is generated using the cura slicer by uploading an stl file above.</title><path fill="currentColor" d="M256 40c118.621 0 216 96.075 216 216 0 119.291-96.61 216-216 216-119.244 0-216-96.562-216-216 0-119.203 96.602-216 216-216m0-32C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm-36 344h12V232h-12c-6.627 0-12-5.373-12-12v-8c0-6.627 5.373-12 12-12h48c6.627 0 12 5.373 12 12v140h12c6.627 0 12 5.373 12 12v8c0 6.627-5.373 12-12 12h-72c-6.627 0-12-5.373-12-12v-8c0-6.627 5.373-12 12-12zm36-240c-17.673 0-32 14.327-32 32s14.327 32 32 32 32-14.327 32-32-14.327-32-32-32z"></path></svg><!-- <i class="fal fa-info-circle" style="margin-bottom: 5px; font-size: 12px;" href="#" data-toggle="tooltip" data-placement="right" title="This value is generated using the cura slicer by uploading an stl file above."></i> -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="filamentCost">Filament Cost ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <input class="span1" type="number" id="filamentCost" value="15.99">
                            <span class="lead">/kg</span>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="maintainanceCost">Maintainance Cost ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <label class="lead text-success field" id="maintainanceCost">0.048</label>
                            <span class="lead">Wear/kg</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="bedAdhesion">Bed Adhesion</label>
                        </div>
                        <div class="col-6 text-left">
                            <select class="span2" id="bedAdhesion">
				                <option value="Blue Tape">Blue Tape</option>
				                <option value="Turn Off">Turn Off</option>
				                <option value="Glue Stick">Glue Stick</option>
				                <option value="Kapton Sheet">Kapton Sheet</option>
				                <option value="PEI Sheet 3M">PEI Sheet 3M</option>
				                <option value="BuildTak">BuildTak</option>
				                <option value="Other">Other</option>
				            </select>
                            <span class="lead"><span class="lead" id="bedAdhesionValue">0.50</span> Wear/kg</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="electricityRate">Electricity Rate ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <input class="span1" type="number" id="electricityRate" value="0.18">
                            <span class="lead">kW/h</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="estCostToPrint">Est. Cost to Print ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <label class="lead text-success" id="estCostToPrint">0.50</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="setupFee">Setup Fee ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <input class="span1" type="number" id="setupFee" value="1.00">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="packaging">Packaging ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <input class="span1" type="number" id="packaging" value="0.30">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="shipping">Shipping ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <input class="span1" type="number" id="shipping" value="6.80">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="markUp">Markup Percentage</label>
                        </div>
                        <div class="col-6 text-left">
                            <input class="span1" type="number" id="markUp" value="35">
                            <span class="lead">%</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="totalPrice">Total Price ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <label class="lead text-success" id="totalPrice"></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 text-right">
                            <label class="lead" for="profit">Profit ($)</label>
                        </div>
                        <div class="col-6 text-left">
                            <label class="lead text-success" id="profit"></label>
                        </div>
                    </div>
                </section>
            </nav>
        </div>
        <!--MIDDLE-->
        <div class="col-md-7">
            <div class="row">
                <div class="col-4">
                    <label class="lead" for="estCostToPrint">Est. Cost to Print ($)</label>
                    <label class="lead text-success" id="estCostToPrint2">0.50</label>
                </div>
                <div class="col-4">
                    <label class="lead" for="totalPrice">Total Price ($)</label>
                    <label class="lead text-success" id="totalPrice2"></label>
                </div>
                <div class="col-4">
                    <label class="lead" for="profit">Profit ($)</label>
                    <label class="lead text-success" id="profit2"></label>
                </div>
            </div>
            <!--STL VIEWER-->

            <div class="upload_background" id="upload-target" style="height: 400px;">
                <!-- <div class="col text-center" id="fileSelector">
                    <input type="file" name="stlFiles[]" class="stlFile" id="stlFiles[]"  />
                </div> -->

            </div>
            <p style="font-size: 10px;">Powered By: <a href="http://jinjunho.github.io/Madeleine.js/" target="_blank">Madeleine.js</a></p>
           
            <script>
                window.onload = function() {
                    // Lily.ready({
                    //     target: 'upload-target',  // target div id
                    //     file: 'file1',  // file input id
                    //     path: 'assets/src'  // path to source directory from current html file
                    // });
                };

            </script>

            <script>
                function onload() {


                };

            </script>
            <!--STL VIEWER END-->
        </div>
        
    </div>
    



<!-- endbuild -->


</body>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>