package com.study.demo.v1.vo;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.bind.annotation.GetMapping;

@Getter
@Setter
public class TestVO {

    private Long test_id;
    private String name;
    private String comment;
}
