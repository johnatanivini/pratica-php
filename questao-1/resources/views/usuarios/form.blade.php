@extends('base')
@section('conteudo')
<div class="row justify-content-center align-items-center">
    <div>
        <a href="{{route("usuario.listar")}}" class="btn btn-primary mt-5" >Usuários</a>
    </div>
</div>
<div class="row">
<div class="col">
    @include('../alertas')
    <div class="card mt-5">
        <div class="card-header">
            @if(!$model->id)
                Cadastrar
            @else
                Atualizar
            @endif
        </div>
        <div class="card-body">
            <form method="post" action="{{route('usuario.save')}}">
                @csrf
                @if($model->id)
                    <input type="hidden" name="id" value="{{$model->id}}" />
                @endif
                <div class="form-group d-flex flex-column">
                <label for="name">Nome completo:</label>
                <input class="form-contol" type="text" id="name" name="name" required value="{{$model?->name}}">
                </div>
                <div class="form-group d-flex flex-column">
                    <label for="userName">Nome de login:</label>
                    <input class="form-contol" type="text" id="userName" required name="userName" value="{{$model?->userName}}">
                </div>
                <div class="form-group d-flex flex-column">
                    <label for="zipCode">CEP</label>
                    <input class="form-contol" type="text" id="zipCode" required name="zipCode" value="{{$model?->zipCode ?? app('request')->input('zipCode') }}">
                </div>
                <div class="form-group d-flex flex-column">
                    <label for="email">Email:</label>
                    <input class="form-contol" type="text" id="email"  required name="email" value="{{$model?->email}}">
                </div>
                @if(!$model->id)
                <div class="form-group d-flex flex-column">
                    <label for="password">Senha :</label>
                    <small>(8 caracteres mínimo, contendo pelo menos 1 letra e 1 número)</small>
                    <input class="form-contol" type="password" id="password" required name="password" value="{{$model?->password}}">
                </div>
                @endif
                <input class="btn btn-primary" type="submit" value="Cadastrar">
            </form>
        </div>
    </div>
</div>
</div>
@endsection