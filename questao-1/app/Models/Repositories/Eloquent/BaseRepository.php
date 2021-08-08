<?php 

namespace App\Models\Repositories\Eloquent;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;

class BaseRepository implements EloquentInterface
{

    public function __construct(protected Model $model)
    {
    }
    /**
     *
     *
     * @return \Illuminate\Support\Collection
     */
    public function all(): Collection
    {
        return $this->model->all();
    }
    /**
     *
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function find(int $id): ?Model
    {
        return $this->model->find($id);
    }
}
