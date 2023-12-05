import './badge.dart';

mixin ManageBadge {
  final List<Badge> badges = [];

  void addBadge(Badge badge) {
    badges.add(badge);
  }
}
