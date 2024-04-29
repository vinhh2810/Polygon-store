<?php

namespace App\Http\Requests;

use App\Http\Requests\BaseRequest;
use Illuminate\Contracts\Validation\Validator;

class ApiRegisterRequest extends BaseRequest
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
        return [
            'name' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|confirmed|min:6',
            'phone' => 'required|string|min:6',
            'address' => 'required',
            'birthday' => 'required|string|min:6',
            'gender' => 'required',
        ];
    }
    public function messages(){
        return [
            'email.required'   =>'Email không được để trống',
            'password.required'   =>'Mật khẩu không được để trống'
        ];
    }
    /**
    * Handle a failed validation attempt.
    *
    * @param Validator $validator
    * @return mixed
    */
     protected function failedValidation(Validator $validator)
     {
         return $this->error($validator->errors()->messages());
     }
}
