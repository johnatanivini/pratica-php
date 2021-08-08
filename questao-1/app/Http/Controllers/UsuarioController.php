<?php

namespace App\Http\Controllers;

use App\Http\Requests\UsuarioRequest;
use App\Models\Repositories\UsuarioRepositoryInterface;
use App\Models\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{

    public function __construct(private UsuarioRepositoryInterface $usuarioRepository)
    {
        
    }
    public function form(int $id = null)
    {
        $model = new Usuario();

        if ($id) {
            $model = $this->usuarioRepository->find($id);
        }

        return view('usuarios.form', [
            'model' => $model
        ]);
    }

    public function save(UsuarioRequest $usuarioRequest)
    {
        $validate = $usuarioRequest->validated();

        match(isset($usuarioRequest->all()['id'])){
            true => $this->usuarioRepository->update($usuarioRequest->all()['id'], $usuarioRequest->all()),
            false => $this->usuarioRepository->create($usuarioRequest->all())
        };

        return redirect()->route('usuario.listar')->withErrors($validate);
    }

    public function listar()
    {
        $usuarios = $this->usuarioRepository->all();

        return view('usuarios.listar', [
            'usuarios' => $usuarios
        ]);
    }

    public function delete(int $id)
    {
        $this->usuarioRepository->delete($id);

        return redirect()->route('usuario.listar')
        ->with('success', 'Usuário removido');
    }
}
