<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="{{ route('data') }}" method="post">
    @csrf
    <input type="text" name="data" id="" style="width:1200px;height:50px"><br>
    <input type="submit" value="Lưu">
</form>
</body>
</html>