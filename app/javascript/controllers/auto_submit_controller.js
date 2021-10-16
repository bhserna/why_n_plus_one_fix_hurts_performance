import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static get targets() {
    return ["button"]
  }

  submit() {
    this.buttonTarget.click();
  }
}
