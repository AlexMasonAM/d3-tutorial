var $verticalSlider = $("#vertical-slider");
if ($verticalSlider.length) {
  $verticalSlider.slider({
    min: 1,
    max: 5,
    value: 3,
    orientation: "vertical",
    range: "min"
  }).addSliderSegments($verticalSlider.slider("option").max, "vertical");
}

var $slider = $("#slider");
if ($slider.length > 0) {
  $slider.slider({
    min: 1,
    max: 5,
    value: 3,
    orientation: "horizontal",
    range: "min"
  }).addSliderSegments($slider.slider("option").max);
}

// Add segments to a slider
$.fn.addSliderSegments = function (amount, orientation) {
  return this.each(function () {
    if (orientation == "vertical") {
      var output = ''
        , i;
      for (i = 1; i <= amount - 2; i++) {
        output += '<div class="ui-slider-segment" style="top:' + 100 / (amount - 1) * i + '%;"></div>';
      };
      $(this).prepend(output);
    } else {
      var segmentGap = 100 / (amount - 1) + "%"
        , segment = '<div class="ui-slider-segment" style="margin-left: ' + segmentGap + ';"></div>';
      $(this).prepend(segment.repeat(amount - 2));
    }
  });
};