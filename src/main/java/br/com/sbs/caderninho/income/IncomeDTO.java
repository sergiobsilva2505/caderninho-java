package br.com.sbs.caderninho.income;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

public class IncomeDTO {

    private final Long id;
    private final String description;
    private final BigDecimal value;
    private final LocalDate createdAt;

    public IncomeDTO(Income income) {
        this.id = income.getId();
        this.description = income.getDescription();
        this.value = income.getValue();
        this.createdAt = income.getCreatedAt();
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

    public static List<IncomeDTO> convertAll(List<Income> incomes){
        return incomes.stream().map(IncomeDTO::new).toList();
    }
}
