<?php

namespace App\Providers;

use App\Models\Repositories\Eloquent\BaseRepository;
use App\Models\Repositories\EloquentInterface;
use App\Models\Repositories\UsuarioRepository;
use App\Models\Repositories\UsuarioRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class RepositoryProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->app->bind(EloquentInterface::class, BaseRepository::class);
        $this->app->bind(UsuarioRepositoryInterface::class, UsuarioRepository::class);
    }
}
