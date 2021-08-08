@extends('base')
@section('conteudo')
<div class="row justify-content-center align-items-center">
    <div>
        <a href="{{route("usuario.form")}}" class="btn btn-primary mt-5 " >Cadastrar</a>
    </div>
</div>
<div class="row justify-content-center align-items-center">
<div class="d-flex">
    <div class="card mt-5">
        <div class="card-header">
            Cadastro
        </div>
        <div class="card-body">
           <table class="table table-bordered">
               <th>
                   <td>Name</td>
                   <td>UserName</td>
                   <td>Email</td>
                   <td>ZipCode</td>
                   <td></td>
               </th>

             @foreach ($usuarios as $item)
                <tr>
                    <td>{{$item->id}}</td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->userName}}</td>
                    <td>{{$item->email}}</td>
                    <td>{{$item->zipCode}}</td>
                    <td class="d-flex flex-row">
                        
                        <a href="{{route('usuario.form',['id'=> $item->id])}}" class="btn btn-info text-light">Editar</a>

                        <form action="{{route('usuario.delete',['id'=>$item->id])}}" method="POST">
                            @csrf
                            <input type="hidden" name="_method" value="DELETE">
                            <button type="submit" class="btn btn-danger">Excluir</button>
                        </form>
                    </td>
                </tr>
             @endforeach

           </table>

        </div>
    </div>
</div>
</div>
@endsection
    