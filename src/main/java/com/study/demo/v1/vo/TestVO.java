package com.study.demo.v1.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.bind.annotation.GetMapping;

@Getter
@Setter
@ToString
public class TestVO {

    private Long test_id;
    private String name;
    private String comment;
}
