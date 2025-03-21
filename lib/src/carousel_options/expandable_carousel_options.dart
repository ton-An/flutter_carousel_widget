import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

import '../carousel_controller/expandable_carousel_controller.dart';
import '../enums/carousel_page_changed_reason.dart';
import '../enums/center_page_enlarge_strategy.dart';
import '../indicators/slide_indicator.dart';
import 'base_carousel_options.dart';

/// The [ExpandableCarouselOptions] class extends [BaseCarouselOptions] and
/// adds more configuration options specific to the [ExpandableCarousel] widget.
class ExpandableCarouselOptions extends BaseCarouselOptions {
  ExpandableCarouselOptions({
    this.controller,
    this.estimatedPageSize,
    this.expansionAlignment = Alignment.topCenter,
    double? aspectRatio,
    double viewportFraction = 0.8,
    int initialPage = 0,
    bool enableInfiniteScroll = false,
    bool reverse = false,
    bool autoPlay = false,
    Duration autoPlayInterval = const Duration(seconds: 5),
    Duration autoPlayAnimationDuration = const Duration(milliseconds: 300),
    Curve autoPlayCurve = Curves.easeInCubic,
    Function(int index, CarouselPageChangedReason reason)? onPageChanged,
    ValueChanged<double?>? onScrolled,
    ScrollPhysics? physics = const BouncingScrollPhysics(),
    Axis scrollDirection = Axis.horizontal,
    bool pauseAutoPlayOnTouch = true,
    bool pauseAutoPlayOnManualNavigate = true,
    bool pauseAutoPlayInFiniteScroll = false,
    PageStorageKey<dynamic>? pageViewKey,
    bool keepPage = true,
    bool showIndicator = true,
    bool floatingIndicator = true,
    double? indicatorMargin = 8.0,
    SlideIndicator? slideIndicator,
    Clip clipBehavior = Clip.antiAlias,
    ScrollBehavior? scrollBehavior,
    bool pageSnapping = true,
    bool padEnds = true,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool allowImplicitScrolling = false,
    String? restorationId,
    bool? enlargeCenterPage = false,
    double? enlargeFactor = 0.25,
    CenterPageEnlargeStrategy enlargeStrategy = CenterPageEnlargeStrategy.scale,
    bool disableCenter = false,
  })  : assert(estimatedPageSize == null || estimatedPageSize > 0.0,
            'estimatedPageSize must be a non-negative double'),
        super(
          aspectRatio: aspectRatio,
          viewportFraction: viewportFraction,
          initialPage: initialPage,
          enableInfiniteScroll: enableInfiniteScroll,
          reverse: reverse,
          autoPlay: autoPlay,
          autoPlayInterval: autoPlayInterval,
          autoPlayAnimationDuration: autoPlayAnimationDuration,
          autoPlayCurve: autoPlayCurve,
          onPageChanged: onPageChanged,
          onScrolled: onScrolled,
          physics: physics,
          scrollDirection: scrollDirection,
          pauseAutoPlayOnTouch: pauseAutoPlayOnTouch,
          pauseAutoPlayOnManualNavigate: pauseAutoPlayOnManualNavigate,
          pauseAutoPlayInFiniteScroll: pauseAutoPlayInFiniteScroll,
          pageViewKey: pageViewKey,
          keepPage: keepPage,
          showIndicator: showIndicator,
          floatingIndicator: floatingIndicator,
          indicatorMargin: indicatorMargin,
          slideIndicator: slideIndicator,
          clipBehavior: clipBehavior,
          scrollBehavior: scrollBehavior,
          pageSnapping: pageSnapping,
          padEnds: padEnds,
          dragStartBehavior: dragStartBehavior,
          allowImplicitScrolling: allowImplicitScrolling,
          restorationId: restorationId,
          enlargeCenterPage: enlargeCenterPage,
          enlargeFactor: enlargeFactor,
          enlargeStrategy: enlargeStrategy,
          disableCenter: disableCenter,
        );

  /// Setting it to a value much bigger than most pages' sizes might result in a
  /// reversed - "expand and shrink" - effect.
  final double? estimatedPageSize;

  /// A [MapController], used to control the map.
  final ExpandableCarouselController? controller;

  final Alignment expansionAlignment;

  /// Copy With Constructor
  ExpandableCarouselOptions copyWith({
    ExpandableCarouselController? controller,
    double? estimatedPageSize,
    Alignment? expansionAlignment,
    double? aspectRatio,
    double? viewportFraction,
    int? initialPage,
    bool? enableInfiniteScroll,
    bool? reverse,
    bool? autoPlay,
    Duration? autoPlayInterval,
    Duration? autoPlayAnimationDuration,
    Curve? autoPlayCurve,
    Axis? scrollDirection,
    Function(int index, CarouselPageChangedReason reason)? onPageChanged,
    ValueChanged<double?>? onScrolled,
    ScrollPhysics? physics,
    bool? pageSnapping,
    bool? pauseAutoPlayOnTouch,
    bool? pauseAutoPlayOnManualNavigate,
    bool? pauseAutoPlayInFiniteScroll,
    PageStorageKey<dynamic>? pageViewKey,
    SlideIndicator? slideIndicator,
    bool? showIndicator,
    bool? floatingIndicator,
    double? indicatorMargin,
    bool? keepPage,
    bool? padEnds,
    Clip? clipBehavior,
    DragStartBehavior? dragStartBehavior,
    ScrollBehavior? scrollBehavior,
    bool? allowImplicitScrolling,
    String? restorationId,
    bool? enlargeCenterPage,
    double? enlargeFactor,
    CenterPageEnlargeStrategy? enlargeStrategy,
    bool? disableCenter,
  }) {
    return ExpandableCarouselOptions(
      controller: controller ?? this.controller,
      aspectRatio: aspectRatio ?? this.aspectRatio,
      expansionAlignment: expansionAlignment ?? this.expansionAlignment,
      viewportFraction: viewportFraction ?? this.viewportFraction,
      initialPage: initialPage ?? this.initialPage,
      enableInfiniteScroll: enableInfiniteScroll ?? this.enableInfiniteScroll,
      reverse: reverse ?? this.reverse,
      autoPlay: autoPlay ?? this.autoPlay,
      autoPlayInterval: autoPlayInterval ?? this.autoPlayInterval,
      autoPlayAnimationDuration:
          autoPlayAnimationDuration ?? this.autoPlayAnimationDuration,
      autoPlayCurve: autoPlayCurve ?? this.autoPlayCurve,
      onPageChanged: onPageChanged ?? this.onPageChanged,
      onScrolled: onScrolled ?? this.onScrolled,
      physics: physics ?? this.physics,
      pageSnapping: pageSnapping ?? this.pageSnapping,
      scrollDirection: scrollDirection ?? this.scrollDirection,
      pauseAutoPlayOnTouch: pauseAutoPlayOnTouch ?? this.pauseAutoPlayOnTouch,
      pauseAutoPlayOnManualNavigate:
          pauseAutoPlayOnManualNavigate ?? this.pauseAutoPlayOnManualNavigate,
      pauseAutoPlayInFiniteScroll:
          pauseAutoPlayInFiniteScroll ?? this.pauseAutoPlayInFiniteScroll,
      pageViewKey: pageViewKey ?? this.pageViewKey,
      keepPage: keepPage ?? this.keepPage,
      showIndicator: showIndicator ?? this.showIndicator,
      floatingIndicator: floatingIndicator ?? this.floatingIndicator,
      indicatorMargin: indicatorMargin ?? this.indicatorMargin,
      slideIndicator: slideIndicator ?? this.slideIndicator,
      padEnds: padEnds ?? this.padEnds,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      scrollBehavior: scrollBehavior ?? this.scrollBehavior,
      allowImplicitScrolling:
          allowImplicitScrolling ?? this.allowImplicitScrolling,
      restorationId: restorationId ?? this.restorationId,
      enlargeCenterPage: enlargeCenterPage ?? this.enlargeCenterPage,
      enlargeFactor: enlargeFactor ?? this.enlargeFactor,
      enlargeStrategy: enlargeStrategy ?? this.enlargeStrategy,
      disableCenter: disableCenter ?? this.disableCenter,
      estimatedPageSize: estimatedPageSize ?? this.estimatedPageSize,
    );
  }
}
