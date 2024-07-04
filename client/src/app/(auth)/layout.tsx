function AuthPage({children}:{children:React.ReactNode}) {
    return(
<main className="bg-[url('https://t3.ftcdn.net/jpg/02/36/24/30/360_F_236243088_RCFyCnCsZ5i7Af9Fzunlb4B3ccJzOPUg.jpg')] bg-no-repeat bg-cover flex min-h-screen flex-col items-center justify-center">
            <form className="flex flex-col bg-white px-6 py-14 rounded-2xl gap-11 text-gray-600 w-1/4" >
            {children}
            </form>
            </main>
    );
}

export default AuthPage;
