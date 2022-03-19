package br.com.sbs.caderninho.income;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/receitas")
public class IncomeController {

    private IncomeService incomeService;

    public IncomeController(IncomeService incomeService) {
        this.incomeService = incomeService;
    }

    @GetMapping
    public String findAll(Model model) {
        List<Income> incomes = incomeService.findAll();
        List<IncomeDTO> incomesDTO = IncomeDTO.convertAll(incomes);

        model.addAttribute("incomesDTO", incomesDTO);
        return "index";
    }
}
