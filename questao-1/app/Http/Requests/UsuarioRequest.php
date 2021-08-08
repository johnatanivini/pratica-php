<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UsuarioRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [
            'name' => 'required| max:150 | min: 10',
            'userName' => 'required | max: 10 | min: 4| unique:usuarios,userName,'.$this->id,
            'zipCode' => 'required | max:9 | min:9 |regex:/^\d{5}([\-]?\d{3})?$/i',
            'email' => 'required | email | unique:usuarios,email,'.$this->id
        ];

        if (!$this->id) {
            $rules['password'] = [
                'required',
                'string',
                'min:8',
                'regex:/[a-zA-Z]/', ///deve conter uma letra minuscula
                //'regex:/^[@?!%*#?&]/', // deve conter um caracter especial
                'regex:/[0-9]/', // deve conter unumero
            ];
        }

        return $rules;
    }

    public function messages()
    {
        return [
                'required' => ' O :attribute é obrigatório',
                'max' => 'O :attribute deve ser menor que :max',
                'min' => 'O :attribute deve ser maior que :min',
                'beetween' => 'O Atributo :attribute seu valor :input não está entre :min - :max.',
                'email' => 'O email não é válido',
                'unique' => 'O :attribute deve ser único',
                "zipCode" => [
                    'regex' => 'O formato do codigoPosta está inválido :value'
                ],
                "password" => [
                    'regex' => 'Verifique as condições, precisa de pelo menos uma letra,
                                maiuscula e minuscula, número, caracter especial'
                ]
        ];
    }
}
