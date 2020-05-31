<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
</head>
<body>
<br><br>
<div class="container" style="width: 500px;">
    <form method="post" action="{{url('/refund/execute')}}" id="myform">
        @csrf
        <div class="form-group">
            <label for="">Order Id</label>
            <input type="text" name="order" id="order" class="form-control" value="{{$order->order_id}}">
        </div>
        <input type="hidden" id="ref_id" value="<?php echo  rand(00000,99999); ?>"/>

          <div class="form-group">
            <label for="">Transection Id</label>
            <input type="text" name="transection" id="transection" class="form-control" value="{{$order->transaction_id}}">
        </div>

        <div class="form-group">
            <label for="">Refund Price</label>
            <input type="text" name="price" id="price" class="form-control" value="{{$order->price}}">
        </div>

        <button type="submit"  class="btn btn-primary">Refund</button>
    </form>
</div>

</body>
</html>
