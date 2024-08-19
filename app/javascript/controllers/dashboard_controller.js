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
        console.log("showNewExpenseModal")
    }

    showNewBudgetingGoalModal() {
        console.log("showNewBudgetingGoalModal")
    }

    showNewIncomeSourceModal() {
        console.log("showNewIncomeSourceModal")
    }
}

export default DashboardController;
