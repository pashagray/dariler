import formatDistanceToNow from "date-fns/formatDistanceToNow";
import format from "date-fns/format";
import { ru } from 'date-fns/locale'

// Ensure it works with turbolinks
document.addEventListener("turbolinks:load", function() {
  const timeHelpers = document.querySelectorAll("[data-time-format]");

  Array.from(timeHelpers).forEach(function(timeHelper) {


    const timeFormat = timeHelper.getAttribute("data-time-format");
    const value = timeHelper.getAttribute("data-time-value");
    const datetime = Date.parse(JSON.parse(value));

    if (timeFormat === "relative") {
      timeHelper.textContent = formatDistanceToNow(datetime, { locale: ru }) + " назад";
    }
    else {
      timeHelper.textContent =  format(datetime, timeFormat);
    }
  });
});
