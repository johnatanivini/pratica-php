<?php 

namespace App\Models\Repositories\Eloquent;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;

interface EloquentInterface
{
    public function all(): Collection;
    public function find(int $id): ?Model;
}
