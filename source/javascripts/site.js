(function (window, document, $, undefined) {
  
  var rock = function () {
    
    function getMaxImageWidth (naturalHeight, naturalWidth, maxHeight) {
      var maxWidth,
          containerWidth = 991; // content width at 1024px window width and above

      if (naturalHeight > maxHeight) {
        maxWidth = parseInt(((naturalWidth * maxHeight) / naturalHeight), 10);
        return maxWidth > containerWidth ? containerWidth : maxWidth;
      } else {
        return naturalWidth > containerWidth ? containerWidth : naturalWidth;
      }  
    }

    function resizeStippledImage (options) {
      var $article      = $('.article'),
          $articleWidth = $article.width(),
          $stippleWrapper = $article.find('.stipple-dottable-wrapper'),
          imgWidthLess, maxWidth;

      options = options || {};

      if ($article.length > 0) {
        maxWidth = getMaxImageWidth(options.imgHeight, options.imgWidth, options.maxHeight);
        imgWidthLess = !!($articleWidth <= maxWidth);

        $stippleWrapper
          .toggleClass('responsive', imgWidthLess)
          .css({ 'width': maxWidth + 'px', 'max-width': maxWidth + 'px' });

        options.img
          .toggleClass('responsive', imgWidthLess)
          .css({ 'width': maxWidth + 'px', 'max-width': maxWidth + 'px' });

        _stippleq.push(['load', '31vrEi', {}]);
      }
    }

    function responsiveStipple () {
      var img = $('.stippled-photo'),
          doResize,
          event = ('onorientationchange' in window) ? 'orientationchange.stippledImage' : 'resize.stippledImage';

      img.each(function (index) {
        var $this = $(this);

        $this.load(function () {
          var height  = $this.attr('height'),
              width   = $this.attr('width');

          resizeConfig = {
            img: $this,
            imgHeight: height,
            imgWidth: width,
            maxHeight: height < 549 ? height : 549 // max-height on the .stipple-dottable-wrapper
          }

          resizeStippledImage(resizeConfig);

          doResize = _.debounce(function () {
            resizeStippledImage(resizeConfig);
          }, 250);

          $(window).off(event).on(event, doResize);
        });
      });
    }

    return {
      responsiveStipple: responsiveStipple
    };
  }();

  rock.responsiveStipple();

})(window, document, jQuery);