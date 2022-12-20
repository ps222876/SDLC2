<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <form method="POST" action="/wachtwoord/nieuw">
        @csrf
        <input type="password" name="wachtwoord">
        <button type="submit">Vernieuw wachtwoord</button>
    </form>

    <form method="POST" action="/wachtwoord">
        @csrf
        <input type="password" name="wachtwoord">
        <button type="submit">Controleer</button>
        @if ($correct)
            <div style="color: green">Correct</div>
        @else
            <div style="color: red">Onjuist</div>
        @endif
    </form>

    <div>
        Hash: {{ $hash }}
    </div>
</body>

</html>
