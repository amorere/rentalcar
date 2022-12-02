import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="pricing"
export default class extends Controller {
  static targets = ["check", "checkout", "price", "form"];
  connect() {
    console.log("CsTsM");
  }
  calculate(event) {
    event.preventDefault();
    console.log(this.checkTarget.value);
    alert("submit");
  }
}
