<?php 

namespace App\Models\Repositories;

use App\Models\Repositories\Eloquent\BaseRepository;
use App\Models\Usuario;
use Exception;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;

/**
 * @property  Model $model
 */
final class UsuarioRepository extends BaseRepository implements UsuarioRepositoryInterface
{

    public function __construct(Usuario $model)
    {
        parent::__construct($model);
    }
    /**
     * remove um registro
     *
     * @param integer $id
     * @return boolean
     */
    public function delete(int $id): bool
    {
        $model =  $this->model->find($id);

        if ($model) {
            return $model->delete();
        }

        return false;
    }
    /**
     * @param array $attributes
     * @return \Illuminate\Support\Collection
     */
    public function select(array $attributes = []): Collection
    {
        $model =  $this->model;

        if (isset($attributes['name'])) {
            $model->name($attributes['name']);
        }

        if (isset($attributes['userName'])) {
            $model->userName($attributes['userName']);
        }

        if (isset($attributes['zipCode'])) {
            $model->zipCode($attributes['zipCode']);
        }

        if (isset($attributes['email'])) {
            $model->email($attributes['email']);
        }

        return $model->all();
    }
    /**
     * Cria um novo registro
     * @param array $attributes
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function create(array $attributes): Model
    {
        unset($attributes['_token']);
        $attributes['password'] = password_hash($attributes['password'], PASSWORD_BCRYPT);
        //dd($attributes);
        return $this->model->create($attributes);
    }

    /**
     *
     * @param integer $id
     * @param array $attributes
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function update($id, array $attributes): ?Model
    {
        $model = $this->find($id);
        $model->name = $attributes['name'];
        $model->userName = $attributes['userName'];
        $model->email = $attributes['email'];
        $model->zipCode = $attributes['zipCode'];
        $model->update();

        return $model;
    }
}
