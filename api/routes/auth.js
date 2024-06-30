import express from "express";
import {registrar, login, refresh, logout} from "../controllers/auth.js";
import {checkRefreshToken} from "../middleware/refreshTokenValidation.js";
import {checkToken} from "../middleware/tokenValidation.js";

const router = express.Router();

router.post("/register", registrar);
router.post("/login", login);
router.post("/logout", checkToken, logout);
router.get("/refresh", checkRefreshToken, refresh);

export default router;
