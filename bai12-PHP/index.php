<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    // code php viết ở đây 
    echo "Hello world!";

    // tạo biến trong php dùng kí hiệu '$' 
    // Biến: $tên biến = giá trị 
    $hoTen = 'Tung Le';
    $tuoi = 22;

    // nối chuỗi 
    echo $hoTen . " " . $tuoi . " tuổi";
    
    $soThuNhat = 10;
    $soThuHai = 15;

    // + - * /  
    $ketQua = $soThuNhat + $soThuHai;
    echo $ketQua . "<br>";

    // += -= *= /= 
    $soThuNhat += $soThuHai;
    echo $soThuNhat;

    $diem = 5;
    if($diem < 4){
        echo "F";
    }
    elseif($diem >= 4 && $diem < 5){
        echo "D";
    }
    elseif($diem >= 5 && $diem < 7){
        echo "C";
    }
    elseif($diem >= 7 && $diem < 8){
        echo "B";
    }
    else{
        echo "A";
    }

    // switch case 
    $color = "red";
    switch($color){
        case "red":
            echo "<br>";
            echo "IS RED";
        break;
        case "blue":
            echo "<br>";
            echo "IS BLUE";
        break;
        default:
            echo "<br>";
            echo "no color";
        break;
    }

    // vòng lặp for 
    for ($i = 0; $i < 100; $i++){
        echo $i . "<br>";
    }
    ?>
</body>
</html>