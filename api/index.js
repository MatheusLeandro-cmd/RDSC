import express from "express";
import useRouter from "./routes/user.js"
import authRouter from "./routes/auth.js"
import postRouter from "./routes/post.js"
import searchRouter from "./routes/search.js"
import likesRouter from "./routes/likes.js"
import friendshipRouter from "./routes/friendship.js"
import commentRouter from "./routes/comment.js"
import uploadRouter from "./routes/upload.js"
import bodyParser from "body-parser";
import cors from "cors"
import cookieParser from "cookie-parser";

const app = express();

const corsOptions = {
    origin: "http://localhost:3000",
    credentials: true,
    methods: ["GET","POST", "PUT", "DELETE"],
    allowedHeaders:[
        "Content-Type",
        "Authorization",
        "Access-Control-Allow-Credentials"
    ]
}

app.use(express.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(cors(corsOptions));
app.use(cookieParser())

app.use("/api/users/", useRouter);
app.use("/api/auth/", authRouter); 
app.use("/api/post/", postRouter); 
app.use("/api/search/", searchRouter); 
app.use("/api/likes/", likesRouter); 
app.use("/api/friendship/", friendshipRouter); 
app.use("/api/comment/", commentRouter); 
app.use("/api/upload/", uploadRouter); 

app.listen(8002, ()=> {
    console.log("Serv rodando na porta 8002")
})