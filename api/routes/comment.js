import express from "express";
import {createComment, getComment} from "../controllers/comment.js";
import {checkToken} from "../middleware/tokenValidation.js";

const router= express.Router() 

router.post("/", checkToken, createComment);
router.get("/", checkToken, getComment);

export default router;