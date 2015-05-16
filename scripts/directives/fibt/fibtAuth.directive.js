app.directive('fibtAuth', function(){
	// Runs during compile
	return {
		// name: '',
		// priority: 1,
		// terminal: true,
		// scope: {}, // {} = isolate, true = child, false/undefined = no change
		 controller: function($scope, $element, $attrs, $transclude) {
		 	$scope.isDisabled = true;
		 	$scope.insertMarkup = function(){
	var html="<input type='text' />"
    var sel, range;
    if (window.getSelection) {
        // IE9 and non-IE
        sel = window.getSelection();
        if (sel.getRangeAt && sel.rangeCount) {
            range = sel.getRangeAt(0);
            range.deleteContents();

            // Range.createContextualFragment() would be useful here but is
            // non-standard and not supported in all browsers (IE9, for one)
            var el = document.createElement("div");
            el.innerHTML = html;
            var frag = document.createDocumentFragment(), node, lastNode;
            while ( (node = el.firstChild) ) {
                lastNode = frag.appendChild(node);
            }
            range.insertNode(frag);
            
            // Preserve the selection
            if (lastNode) {
                range = range.cloneRange();
                range.setStartAfter(lastNode);
                range.collapse(true);
                sel.removeAllRanges();
                sel.addRange(range);
            }
        }
    } else if (document.selection && document.selection.type != "Control") {
        // IE < 9
        document.selection.createRange().pasteHTML(html);
    }
}

		 },
		// require: 'ngModel', // Array = multiple requires, ? = optional, ^ = check parent elements
		 restrict: 'AE', // E = Element, A = Attribute, C = Class, M = Comment
		// template: '',
		 templateUrl: 'scripts/directives/fibt/fibtAuth.html',
		 replace: true,
		// transclude: true,
		// compile: function(tElement, tAttrs, function transclude(function(scope, cloneLinkingFn){ return function linking(scope, elm, attrs){}})),
		link: function($scope, iElm, iAttrs, controller) {
			
		}
	};
});
app.directive('focusInput', function($timeout) {
  return {
  	restrict: 'A',
  	scope:false,
    link: function(scope, element, attrs) {
      element.bind('click', function() {
      	  console.log('foucus in');
          scope.isDisabled=false; 
      });
	  element.bind('blur', function() {
	  	  console.log('foucus out');
	      scope.isDisabled=true;
	  });
    }
  };
});
