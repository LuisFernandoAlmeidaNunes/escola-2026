package com.example.demo.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.Instant;

@Data
@NoArgsConstructor
@Entity
@Table(name = "task")
public class Task extends Lesson{
    private String description;
    private Integer questionCount;
    private Integer approvalCount;
    private Double weight;
    private Instant dueDate;
    public Task(Long id, String title, Integer position, Section
                        section, String description, Integer questionCount,
                Integer approvalCount, Double weight, Instant
                        dueDate) {
        super(id, title, position, section);
        this.description = description;
        this.questionCount = questionCount;
        this.approvalCount = approvalCount;
        this.weight = weight;
        this.dueDate = dueDate;
    }
}
