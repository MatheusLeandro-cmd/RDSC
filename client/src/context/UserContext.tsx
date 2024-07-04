"use client";
import { createContext, useEffect, useState } from "react";

interface ContextProps {
    children: React.ReactNode;
}

interface User {
    user: 
    | {
        id: number;
        email: string;
        username: string;
        userImg: string;
        bgImg: string;
    }
    | undefined;
    setUser: (newState: any) => void;
}

const intialValue = {
    user: undefined,
    setUser: () => {},
};

export const UserContext = createContext<User>(intialValue)

export const UserContextProvider = ({children}: ContextProps) => {
    const [user, setUser] = useState ( intialValue.user)
    useEffect(() =>{
          let UserJSON = localStorage.getItem("rede_s:user")
          setUser(UserJSON && JSON.parse(UserJSON))
    },[])
  

    return(
        <UserContext.Provider value = {{
            user,
            setUser
        }} > 
        {children}
        </UserContext.Provider>
    )
} 
/*
import { createContext, useState, useEffect } from "react";

interface ContextProps {
    children: React.ReactNode;
}

interface User {
    user: {
        id: number;
        email: string;
        username: string;
        userImg: string;
        bgImg: string;
    } | undefined;
    setUser: (newState: any) => void;
}

const initialValue: User = {
    user: undefined,
    setUser: () => {},
};

export const UserContext = createContext<User>(initialValue);

export const UserContextProvider = ({ children }: ContextProps) => {
    const [user, setUser] = useState<User["user"]>(initialValue.user);

    useEffect(() => {
        
        if (typeof window !== "undefined") {
            const userJSON = localStorage.getItem("rede_s:user");
            setUser(userJSON ? JSON.parse(userJSON) : initialValue.user);
        }
    }, []);

    return (
        <UserContext.Provider value={{ user, setUser }}>
            {children}
        </UserContext.Provider>
    );
}; */


