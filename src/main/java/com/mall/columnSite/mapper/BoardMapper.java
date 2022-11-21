package com.mall.columnSite.mapper;

import com.mall.columnSite.board.BoardDTO;
import com.mall.columnSite.board.PostCommentDTO;
import com.mall.columnSite.fullNotice.FullNoticeDTO;
import com.mall.columnSite.util.PageDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BoardMapper {
    List<BoardDTO> showPostList(PageDTO page) throws Exception;

    void submitPost(BoardDTO board) throws Exception;

    void submitModifyPost(BoardDTO board) throws Exception;

    BoardDTO readPost(int postNum) throws Exception;

    void deletePost(int postNum) throws Exception;

    int countTotalPost(PageDTO page) throws Exception;

    void addComment(PostCommentDTO comment) throws Exception;

    List<PostCommentDTO> showCommentList(PageDTO page) throws Exception;

    void deleteComment(int commentNum) throws Exception;

    void updateCommentCount(int postNum) throws Exception;

    void updateViews(int postNum) throws Exception;

    int checkViewUserIp(@Param("postNum") int postNum, @Param("ip") String ip) throws Exception;

    void saveViewUserIp(@Param("postNum") int postNum, @Param("ip") String ip) throws Exception;

    List<BoardDTO> showSelfNoticeList() throws Exception;

    List<FullNoticeDTO> showFullNoticeList() throws Exception;

    int countTotalComment(PageDTO page) throws Exception;
}
