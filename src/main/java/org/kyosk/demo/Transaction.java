package org.kyosk.demo;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Transaction {

    @Id
    private String id;
    private String description;
    private double amount;
}
