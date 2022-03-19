package br.com.sbs.caderninho.income;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IncomeService {

    private IncomeRepository incomeRepository;

    public IncomeService(IncomeRepository incomeRepository) {
        this.incomeRepository = incomeRepository;
    }

    public List<Income> findAll() {
        return incomeRepository.findAll();
    }
}
