package com.mall.columnSite.product;

import lombok.Data;

@Data
public class LikeItDTO {

    private String id;
    private int productNum;

    private ProductDTO productDTO;
}
