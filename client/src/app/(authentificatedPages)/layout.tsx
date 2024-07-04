"use client";

import Header from "@/components/Header";
import { useRouter } from "next/navigation";
import SideBar from "@/components/SideBar";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { makeRequest } from "../../../axios";
import { ReactNode } from "react";
import FriendshipTable from "@/components/FriendshipTable";


export default function MainHome({ children }: { children: ReactNode }) {

  const router = useRouter();

  const { data, error, isSuccess, isError } = useQuery({
    queryKey: ["refrsh"],
    queryFn: () =>
      makeRequest.get("auth/refresh").then((res) => {
        return res.data
      }),
    retry: false,
    refetchInterval: 60 * 50 * 1000,
  });

  if (isSuccess) {
    console.log(data.msg)
  }

  if (isError) {
    console.log(error)
    router.push('/login')
  }

  return (
    <main className="flex min-h-screen flex-col items-center bg-zinc-100">
      <Header />
      <div className="w-full flex justify-start py-20">
        <SideBar />

        <div className="w-full  flex justify-center">
          {children}
        </div>
        <FriendshipTable />
      </div>
    </main>
  );
}
