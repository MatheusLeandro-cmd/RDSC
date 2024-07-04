"use client";

import AuthInput from "@/components/AuthInput";
import { useState } from "react";
import Link from "next/link";
import { makeRequest } from "../../../../axios";

function Register() {

const [username, setUsername] = useState('');
const [email, setEmail] = useState('');
const [password, setPassword] = useState('');
const [confirmPassword, setConfirmPassword] = useState('');
const [error, setError] = useState('');
const [sucess, setSucess] = useState('');

const handleRegister = (e:any) => {
    e.preventDefault();
    makeRequest.post("auth/register", 
    {username, email, password, confirmPassword}).then((res) => {
        console.log(res.data);
        setSucess(res.data.msg)
        setError('')

    }).catch((err) => {
        console.log(err);
        setError(err.response.data.msg);
        setSucess('')
    })
}

    return ( 
        <>
            <h1 className="font-bold text-2xl">
                   Registre-se agora
                </h1>
                <AuthInput label="Nome:" newState={setUsername} />
                <AuthInput label="Email:" newState={setEmail} />
                <AuthInput label="Senha:" newState={setPassword} IsPassword/>
                <AuthInput label="Confirmar senha:" newState={setConfirmPassword} IsPassword/>

                {error.length>0 && <span className="text-red-600">* {error} </span>}
                {sucess.length>0 && <span className="text-green-600">* {sucess} </span>}


                <button className="bg-green-600 py-3 font-bold text-white rounded-lg hover:bg-green-800" onClick={(e)=> handleRegister(e)}>Criar conta</button>
                <Link href="/login" className="text-center underline"> Já possui uma conta?</Link>

        </>
    );
}

export default Register;