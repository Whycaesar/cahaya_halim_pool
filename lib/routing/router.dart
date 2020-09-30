import 'package:cahaya_halim_pool/views/about/about_view.dart';
import 'package:cahaya_halim_pool/views/testimonial/testimonial_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cahaya_halim_pool/routing/route_names.dart';
import 'package:cahaya_halim_pool/views/contact/contact_view.dart';
import 'package:cahaya_halim_pool/views/gallery/gallery_view.dart';
import 'package:cahaya_halim_pool/views/home/home_view.dart';
import 'package:cahaya_halim_pool/extensions/string_extentions.dart';
import 'package:cahaya_halim_pool/views/pool_construction/pool_construction_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name.getRoutingData;

  switch (routingData.route) {
    case HomeRoute:
      User user;
      return _getPageRoute(HomeView(user), settings);
    case GalleryRoute:
      return _getPageRoute(GalleryView(), settings);
    case PoolConstructionRoute:
      return _getPageRoute(PoolConstructionView(), settings);
    case TestimonialsRoute:
      return _getPageRoute(TestimonialView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case ContactUsRoute:
      return _getPageRoute(ContactView(), settings);
    // case EpisodesRoute:
    //   return _getPageRoute(EpisodesView(), settings);
    // case EpisodeDetailsRoute:
    //   var id = int.tryParse(routingData['id']);
    //   return _getPageRoute(EpisodeDetails(id: id), settings);
    default:
      User user;
      return _getPageRoute(HomeView(user), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
