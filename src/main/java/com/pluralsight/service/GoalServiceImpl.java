package com.pluralsight.service;

import com.pluralsight.model.Goal;
import com.pluralsight.repository.GoalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("goalService")
public class GoalServiceImpl implements GoalService {

    @Autowired
    private GoalRepository goalRepository;

    public Goal save(Goal goal) {


        return goalRepository.save(goal);
    }
}
