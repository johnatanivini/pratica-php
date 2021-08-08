<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    use HasFactory;

    /**
     * Tabela não contem datas d e criação e atualização
     *
     * @var boolean
     */
    public $timestamps = false;
    /**
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'userName',
        'password',
        'email',
        'zipCode'
    ];
/**
     *
     * @param string $zipCode
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function scopeName(string $name): Model
    {
        $this->where('name', $name);
        return $this;
    }
/**
     *
     * @param string $zipCode
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function scopeUserName(string $userName): Model
    {
        $this->where('userName', $userName, 'LIKE');
        return $this;
    }
/**
     *
     * @param string $zipCode
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function scopeEmail(string $email): Model
    {
        $this->where('email', $email);

        return $this;
    }
    /**
     *
     * @param string $zipCode
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function scopeZipCode(string $zipCode): Model
    {
        $this->where('zipCode', $zipCode);
        return $this;
    }
}
