import { Controller } from "@hotwired/stimulus";

/**
 * Dashboard Stimulus Controller.
 * 
 * It handles various tasks, such as opening and closing certain modals on button presses.
 * `DashboardController` inherits from @hotwired/stimulus/Controller.
 */
class DashboardController extends Controller {
    static targets = [
        "newBudgetingGoalModal", "newIncomeSourceModal", "newExpenseModal"
    ];

    connect() {
        console.log("working just fine...");
    }

    showNewExpenseModal() {
        this.newExpenseModalTarget.classList.remove("hidden");
    }

    closeNewExpenseModal() {
        this.newExpenseModalTarget.classList.add("hidden");
    }

    showNewBudgetingGoalModal() {
        this.newBudgetingGoalModalTarget.classList.remove("hidden");
    }

    closeNewBudgetingGoalModal() {
        this.newBudgetingGoalModalTarget.classList.add("hidden");
    }

    showNewIncomeSourceModal() {
        this.newIncomeSourceModalTarget.classList.remove("hidden");
    }

    closeNewIncomeSourceModal() {
        this.newIncomeSourceModalTarget.classList.add("hidden");
    }
}

export default DashboardController;
