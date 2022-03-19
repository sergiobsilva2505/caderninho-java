package br.com.sbs.caderninho.income;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
public class Income {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Descriçao não pode ser vazia ou nula")
    private String description;

    @DecimalMin(value = "0.0", inclusive = false)
    @Digits(integer = 19, fraction = 2)
    private BigDecimal value;

    @FutureOrPresent
    private LocalDate createdAt;

    @Deprecated
    public Income() {

    }

    public Income(String description, BigDecimal value, LocalDate createdAt) {
        this.description = description;
        this.value = value;
        this.createdAt = createdAt;
    }

    public Long getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

    public BigDecimal getValue() {
        return value;
    }

    public LocalDate getCreatedAt() {
        return createdAt;
    }
}
