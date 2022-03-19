package br.com.sbs.caderninho.controller;

import br.com.sbs.caderninho.expense.*;
import br.com.sbs.caderninho.income.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/")
public class IndexController {

    private final ExpenseService expenseService;
    private final IncomeService incomeService;

    public IndexController(ExpenseService expenseService, IncomeService incomeService) {
        this.expenseService = expenseService;
        this.incomeService = incomeService;
    }

    @GetMapping
    public String index() {
        return "redirect:/dashboard";
    }

    @GetMapping("/dashboard")
    public String findAll(Model model) {
        List<Income> incomes = incomeService.findAll();
        List<Expense> expenses = expenseService.findAll();
        List<IncomeDTO> incomesDTO = incomes.stream().map(IncomeDTO::new).toList();
        List<ExpenseDTO> expensesDTO = expenses.stream().map(ExpenseDTO::new).toList();

        double totalIncomes = incomes.stream().map(Income::getValue).mapToDouble(BigDecimal::doubleValue).sum();
        double totalExpenses = expenses.stream().map(Expense::getValue).mapToDouble(BigDecimal::doubleValue).sum();

        model.addAttribute("incomesDTO", incomesDTO);
        model.addAttribute("expensesDTO", expensesDTO);
        model.addAttribute("sumIncomes", totalIncomes);
        model.addAttribute("sumExpenses", totalExpenses);
        return "index";
    }
}
