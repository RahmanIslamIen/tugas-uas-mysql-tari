<?php
include_once("konfigurasi.php");
 
// Fetch all users data from database
$dataA_class = mysqli_query($mysqli, "SELECT * FROM a_class ORDER BY id DESC");
$dataCla = mysqli_query($mysqli, "SELECT * FROM cla ORDER BY id DESC");
$dataGla = mysqli_query($mysqli, "SELECT * FROM gla ORDER BY id DESC");
?>
 
<html>
<head>    
    <title>Tugas Uas</title>
    <link rel="stylesheet" href="style.css">
</head>
 
<body>
    <center>
        <table width='50%' style="margin-top: 50px;">
            <tr  class="garis_kategori">
                <td>
                    <hr>
                        MODEL
                    <hr>
                </td>
                <td>
                    <hr>
                        CBU/CKD
                    <hr>
                </td>
                <td>
                    <hr>
                        HARGA
                    <hr>
                </td>
            </tr>
            <tr>
                <td class="kategori_model" colspan="3">A-Class</td>
            </tr>
            <?php  
            while($item = mysqli_fetch_array($dataA_class)) {         
                echo "<tr>";
                echo "<td>".$item['model']."</td>";
                echo "<td>".$item['cbu_ckd']."</td>";
                echo "<td>".$item['harga']."</td>"; 
                echo "</tr>";        
            }
            ?>
            <tr>
                <td class="kategori_model" colspan="3">Cla</td>
            </tr>
            <?php  
            while($item = mysqli_fetch_array($dataCla)) {         
                echo "<tr>";
                echo "<td>".$item['model']."</td>";
                echo "<td>".$item['cbu_ckd']."</td>";
                echo "<td>".$item['harga']."</td>"; 
                echo "</tr>";        
            }
            ?>
            <tr>
                <td class="kategori_model" colspan="3">Gla</td>
            </tr>
            <?php  
            while($item = mysqli_fetch_array($dataGla)) {         
                echo "<tr>";
                echo "<td>".$item['model']."</td>";
                echo "<td>".$item['cbu_ckd']."</td>";
                echo "<td>".$item['harga']."</td>"; 
                echo "</tr>";        
            }
            ?>
        </table>
    </center>
</body>
</html>