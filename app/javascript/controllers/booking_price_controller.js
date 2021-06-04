import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "start", "end", "total", "rate" ]

  connect() {
    const endInput = this.endTarget.querySelector("#booking_end_date");
    const startInput = this.startTarget.querySelector("#booking_start_date");
    const oneDay = 24 * 60 * 60 * 1000;

    this.startTarget.addEventListener("change", (event) => {
      if (endInput.value == "" || startInput.value == "") { return };
      let startDate = new Date(startInput.value);
      let endDate = new Date(endInput.value);
      const diffDays = Math.round(Math.abs((endDate - startDate) / oneDay));
      this.totalTarget.querySelector("#booking_total_price").value = parseInt(this.rateTarget.value) * diffDays;
    })

    this.endTarget.addEventListener("change", (event) => {
      if (endInput.value == "" || startInput.value == "") { return };
      let startDate = new Date(startInput.value);
      let endDate = new Date(endInput.value);
      const diffDays = Math.round(Math.abs((endDate - startDate) / oneDay));
      this.totalTarget.querySelector("#booking_total_price").value = parseInt(this.rateTarget.value) * diffDays;
    })
  }
}
