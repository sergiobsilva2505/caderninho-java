package br.com.sbs.caderninho.expense;

import java.math.BigDecimal;
import java.time.LocalDate;

public class ExpenseDTO {

    private final Long id;
    private final String description;
    private final BigDecimal value;
    private final LocalDate createdAt;

    public ExpenseDTO(Expense expense) {
        this.id = expense.getId();
        this.description = expense.getDescription();
        this.value = expense.getValue();
        this.createdAt = expense.getCreatedAt();
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
