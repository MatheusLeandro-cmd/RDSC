import moment from "moment"
import "moment/locale/pt-br";
import { IComments } from "@/interfaces";

function Comment(props: { comment: IComments }) {

    const { comment_desc, userImg, username, created_at } = props.comment;


    return (
        <div className="mt-6 flex gap-2">
                <img className="w-8 h-8 rounded-full "
                    src={userImg ? userImg :
                        "https://i.pinimg.com/474x/23/b9/72/23b972cd7e341576d80cf8cea428f8c7.jpg"}
                    alt="icon do usuário que fez o comentário" />
           
            <div className="text-zinc-600 w-full">
                <div className="flex flex-col bg-zinc-100 px-4 py-1 rounded-md">
                    <span className="font-semibold">{username}</span>
                    <span>{comment_desc}</span>
                </div>
                <span className="text-xs">{moment(created_at).fromNow()}</span>
            </div>
        </div>
    );
}

export default Comment;