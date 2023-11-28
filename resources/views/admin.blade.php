@extends('layouts.app')

@section('islam')



<h2>Connexion administrateur</h2>


<form method="#" action="#">

    <div>
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required autofocus>
    </div>

    <div>
        <label for="password">Mot de passe</label>
        <input type="password" id="password" name="password" required>
    </div>

    <div>
        <button type="submit">Se connecter</button>
    </div>
</form>



@endsection