class GraphQlQueries {
  String getNotificationsCount() {
    return r"""subscription getNotificationsCount($abwaab_user_id: String) {
  notifications_aggregate(where: {Notification_Users: {user_id: {_eq: $abwaab_user_id}, seen: {_eq: false}}, status: {_neq: 3}}) {
    aggregate {
      count
    }
  }
}""";
  }

  String repliesThreadsWatcher() {
    return r"""
subscription lessonThreadsWatcher($commentId: String) {
  comment_aggregate(where: {parent_interaction_id: {_eq: $commentId}}) {
    aggregate {
      count
    }
  }
}""";
  }
}
