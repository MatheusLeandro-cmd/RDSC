import { db } from "../connect.js";

export const addFriendship = (req, res) => {
const {follower_id, followed_id} = req.body;

db.query("INSERT INTO friendship SET ?", {follower_id, followed_id},(error)=> {
    if (error) {
        console.log(error)
        return res.status(500).json({msg: "Ocorreu algum erro no servidor, tente novamente mais tarde"})
    }else{
        return res.status(200).json({msg: "Usuário seguido com sucesso!"});
    };
});
};

export const deleteFriendship = (req, res) => {
    const {follower_id, followed_id} = req.query
    db.query("DELETE FROM friendship WHERE `follower_id` = ? AND `followed_id` = ?", 
    [follower_id, followed_id], (error) => {
if (error) {
    console.log(error);
    return res.status(500).json
    ({msg: "Ocorreu algum erro no servidor, tente novamente mais tarde"});

} else {
    return res.status(200).json({msg: "Usuário deletado com sucesso!!"}) }
    });
};

export const getFriendship = (req, res) => {
    db.query("SELECT f.*, u.username, userImg FROM friendship AS f JOIN user AS u ON (u.id = followed_id) WHERE follower_id = ?",
    [req.query.follower_id],
    (error, data) => {
if(error){
    console.log(error)
    return res.status(500).json({msg: "Ocorreu algum erro no servidor, tente novamente mais tarde"}); 

}else if(data){
    return res.status(200).json({data})
} 
    })
};


