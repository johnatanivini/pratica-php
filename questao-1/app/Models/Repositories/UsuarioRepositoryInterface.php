<?php 

namespace App\Models\Repositories;

use Exception;
use Illuminate\Database\Eloquent\Model;

interface UsuarioRepositoryInterface
{
    /**
     *
     * @param integer $id
     * @return boolean
     */
    public function delete(int $id): bool;
    /**
     *
     * @param integer $id
     * @param array $attributes
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function update(int $id, array $attributes): ?Model;

       /**
     *
     * @param integer $id
     * @param array $attributes
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function create(array $attributes): Model;
}