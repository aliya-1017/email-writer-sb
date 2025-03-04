package com.email.writer.app;

import lombok.Data;

@Data // data annotation from help creating getter and setters and constructor
public class EmailRequest {
    //email structure
    private String emailContent;
    private String tone;
}
