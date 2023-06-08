import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    var settings = {}
    new TomSelect( this.element, {
      plugins: {
        remove_button:{
          title:'Remove this item',
        }
      },
      persist: false,
      create: true,
      onDelete: function(values) {
        return confirm(values.length > 1 ? 'Are you sure you want to remove these ' + values.length + ' items?' : 'Are you sure you want to remove "' + values[0] + '"?');
      }
    });
  }
}
