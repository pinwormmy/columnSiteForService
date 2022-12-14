package com.mall.columnSite.mapper;

import com.mall.columnSite.fullNotice.FullNoticeCommentDTO;
import com.mall.columnSite.fullNotice.FullNoticeDTO;
import com.mall.columnSite.util.PageDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface FullNoticeMapper {
    List<FullNoticeDTO> showPostList(PageDTO page) throws Exception;

    void submitPost(FullNoticeDTO board) throws Exception;

    void submitModifyPost(FullNoticeDTO board) throws Exception;

    FullNoticeDTO readPost(int postNum) throws Exception;

    void deletePost(int postNum) throws Exception;

    int countTotalPost(PageDTO page) throws Exception;

    void addComment(FullNoticeCommentDTO comment) throws Exception;

    List<FullNoticeCommentDTO> showCommentList(int postNum) throws Exception;

    void deleteComment(int commentNum) throws Exception;

    void updateCommentCount(int postNum) throws Exception;

    void updateViews(int postNum) throws Exception;

    int checkViewUserIp(@Param("postNum") int postNum, @Param("ip") String ip) throws Exception;

    void saveViewUserIp(@Param("postNum") int postNum, @Param("ip") String ip) throws Exception;

    List<FullNoticeDTO> showSelfNoticeList() throws Exception;
}
