package br.com.sbs.caderninho.income;

import java.math.BigDecimal;
import java.time.LocalDate;

public record NewIncomeForm(
        String description,
        BigDecimal value,
        LocalDate createdAt) {

}
