class GithubRepoModel {
  int? id;
  String? nodeId;
  String name;
  String? fullName;
  bool? private;
  Owner? owner;
  String htmlUrl;
  dynamic description;
  bool? fork;
  String? url;
  String? forksUrl;
  String? keysUrl;
  String? collaboratorsUrl;
  String? teamsUrl;
  String? hooksUrl;
  String? issueEventsUrl;
  String? eventsUrl;
  String? assigneesUrl;
  String? branchesUrl;
  String? tagsUrl;
  String? blobsUrl;
  String? gitTagsUrl;
  String? gitRefsUrl;
  String? treesUrl;
  String? statusesUrl;
  String? languagesUrl;
  String? stargazersUrl;
  String? contributorsUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? commitsUrl;
  String? gitCommitsUrl;
  String? commentsUrl;
  String? issueCommentUrl;
  String? contentsUrl;
  String? compareUrl;
  String? mergesUrl;
  String? archiveUrl;
  String? downloadsUrl;
  String? issuesUrl;
  String? pullsUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? labelsUrl;
  String? releasesUrl;
  String? deploymentsUrl;
  String? createdAt;
  String? updatedAt;
  String? pushedAt;
  String? gitUrl;
  String? sshUrl;
  String? cloneUrl;
  String? svnUrl;

  int? size;
  int? stargazersCount;
  int? watchersCount;
  String? language;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasDownloads;
  bool? hasWiki;
  bool? hasPages;
  bool? hasDiscussions;
  int? forksCount;

  bool? archived;
  bool? disabled;
  int? openIssuesCount;

  bool? allowForking;
  bool? isTemplate;
  bool? webCommitSignoffRequired;

  String? visibility;
  int? forks;
  int? openIssues;
  int? watchers;
  String? defaultBranch;

  GithubRepoModel(
      {this.id,
      this.nodeId,
      required this.name,
      this.fullName,
      this.private,
      this.owner,
      required this.htmlUrl,
      this.description,
      this.fork,
      this.url,
      this.forksUrl,
      this.keysUrl,
      this.collaboratorsUrl,
      this.teamsUrl,
      this.hooksUrl,
      this.issueEventsUrl,
      this.eventsUrl,
      this.assigneesUrl,
      this.branchesUrl,
      this.tagsUrl,
      this.blobsUrl,
      this.gitTagsUrl,
      this.gitRefsUrl,
      this.treesUrl,
      this.statusesUrl,
      this.languagesUrl,
      this.stargazersUrl,
      this.contributorsUrl,
      this.subscribersUrl,
      this.subscriptionUrl,
      this.commitsUrl,
      this.gitCommitsUrl,
      this.commentsUrl,
      this.issueCommentUrl,
      this.contentsUrl,
      this.compareUrl,
      this.mergesUrl,
      this.archiveUrl,
      this.downloadsUrl,
      this.issuesUrl,
      this.pullsUrl,
      this.milestonesUrl,
      this.notificationsUrl,
      this.labelsUrl,
      this.releasesUrl,
      this.deploymentsUrl,
      this.createdAt,
      this.updatedAt,
      this.pushedAt,
      this.gitUrl,
      this.sshUrl,
      this.cloneUrl,
      this.svnUrl,
      this.size,
      this.stargazersCount,
      this.watchersCount,
      this.language,
      this.hasIssues,
      this.hasProjects,
      this.hasDownloads,
      this.hasWiki,
      this.hasPages,
      this.hasDiscussions,
      this.forksCount,
      this.archived,
      this.disabled,
      this.openIssuesCount,
      this.allowForking,
      this.isTemplate,
      this.webCommitSignoffRequired,
      this.visibility,
      this.forks,
      this.openIssues,
      this.watchers,
      this.defaultBranch});

  factory GithubRepoModel.fromMap(Map<String, dynamic> json) => GithubRepoModel(
        name: json['name'] ?? 'no information',
        description: json['description'] ?? 'no information',
        htmlUrl: json['html_url'] ?? 'no information',
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['node_id'] = nodeId;
    data['name'] = name;
    data['full_name'] = fullName;
    data['private'] = private;
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['html_url'] = htmlUrl;
    data['description'] = description;
    data['fork'] = fork;
    data['url'] = url;
    data['forks_url'] = forksUrl;
    data['keys_url'] = keysUrl;
    data['collaborators_url'] = collaboratorsUrl;
    data['teams_url'] = teamsUrl;
    data['hooks_url'] = hooksUrl;
    data['issue_events_url'] = issueEventsUrl;
    data['events_url'] = eventsUrl;
    data['assignees_url'] = assigneesUrl;
    data['branches_url'] = branchesUrl;
    data['tags_url'] = tagsUrl;
    data['blobs_url'] = blobsUrl;
    data['git_tags_url'] = gitTagsUrl;
    data['git_refs_url'] = gitRefsUrl;
    data['trees_url'] = treesUrl;
    data['statuses_url'] = statusesUrl;
    data['languages_url'] = languagesUrl;
    data['stargazers_url'] = stargazersUrl;
    data['contributors_url'] = contributorsUrl;
    data['subscribers_url'] = subscribersUrl;
    data['subscription_url'] = subscriptionUrl;
    data['commits_url'] = commitsUrl;
    data['git_commits_url'] = gitCommitsUrl;
    data['comments_url'] = commentsUrl;
    data['issue_comment_url'] = issueCommentUrl;
    data['contents_url'] = contentsUrl;
    data['compare_url'] = compareUrl;
    data['merges_url'] = mergesUrl;
    data['archive_url'] = archiveUrl;
    data['downloads_url'] = downloadsUrl;
    data['issues_url'] = issuesUrl;
    data['pulls_url'] = pullsUrl;
    data['milestones_url'] = milestonesUrl;
    data['notifications_url'] = notificationsUrl;
    data['labels_url'] = labelsUrl;
    data['releases_url'] = releasesUrl;
    data['deployments_url'] = deploymentsUrl;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['pushed_at'] = pushedAt;
    data['git_url'] = gitUrl;
    data['ssh_url'] = sshUrl;
    data['clone_url'] = cloneUrl;
    data['svn_url'] = svnUrl;

    data['size'] = size;
    data['stargazers_count'] = stargazersCount;
    data['watchers_count'] = watchersCount;
    data['language'] = language;
    data['has_issues'] = hasIssues;
    data['has_projects'] = hasProjects;
    data['has_downloads'] = hasDownloads;
    data['has_wiki'] = hasWiki;
    data['has_pages'] = hasPages;
    data['has_discussions'] = hasDiscussions;
    data['forks_count'] = forksCount;

    data['archived'] = archived;
    data['disabled'] = disabled;
    data['open_issues_count'] = openIssuesCount;

    data['allow_forking'] = allowForking;
    data['is_template'] = isTemplate;
    data['web_commit_signoff_required'] = webCommitSignoffRequired;

    data['visibility'] = visibility;
    data['forks'] = forks;
    data['open_issues'] = openIssues;
    data['watchers'] = watchers;
    data['default_branch'] = defaultBranch;
    return data;
  }
}

class Owner {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;

  Owner(
      {this.login,
      this.id,
      this.nodeId,
      this.avatarUrl,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.eventsUrl,
      this.receivedEventsUrl,
      this.type,
      this.siteAdmin});

  Owner.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['login'] = login;
    data['id'] = id;
    data['node_id'] = nodeId;
    data['avatar_url'] = avatarUrl;
    data['gravatar_id'] = gravatarId;
    data['url'] = url;
    data['html_url'] = htmlUrl;
    data['followers_url'] = followersUrl;
    data['following_url'] = followingUrl;
    data['gists_url'] = gistsUrl;
    data['starred_url'] = starredUrl;
    data['subscriptions_url'] = subscriptionsUrl;
    data['organizations_url'] = organizationsUrl;
    data['repos_url'] = reposUrl;
    data['events_url'] = eventsUrl;
    data['received_events_url'] = receivedEventsUrl;
    data['type'] = type;
    data['site_admin'] = siteAdmin;
    return data;
  }
}
