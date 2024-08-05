import 'package:flutter/material.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/features/list/views/list_page.dart';
import 'package:frontend/src/features/list/views/lists_page.dart';
import 'package:frontend/src/pages/groups_page.dart';
import 'package:frontend/src/pages/recipes_page.dart';
import 'package:frontend/src/routing/navigation_scaffold.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  homeScreen,
  shoppingLists,
  shoppingListDetails,
  recipes,
  groups
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellListsNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellRecipesNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellGroupsNavigatorKey =
    GlobalKey<NavigatorState>();

final _router = GoRouter(
    initialLocation: '/lists',
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) =>
              NavigationScaffold(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(navigatorKey: _shellListsNavigatorKey, routes: [
              GoRoute(
                  name: AppRoutes.shoppingLists.name,
                  path: '/lists',
                  builder: (context, state) => const ListsPage(),
                  routes: [
                    GoRoute(
                        name: AppRoutes.shoppingListDetails.name,
                        path: ':id',
                        builder: (context, state) => ListPage(
                            listId: int.parse(state.pathParameters['id']!)))
                  ])
            ]),
            StatefulShellBranch(
                navigatorKey: _shellRecipesNavigatorKey,
                routes: [
                  GoRoute(
                    name: AppRoutes.recipes.name,
                    path: '/recipes',
                    builder: (context, state) => const RecipesPage(),
                  )
                ]),
            StatefulShellBranch(
                navigatorKey: _shellGroupsNavigatorKey,
                routes: [
                  GoRoute(
                    name: AppRoutes.groups.name,
                    path: '/groups',
                    builder: (context, state) => const GroupsPage(),
                  )
                ])
          ])
    ]);

GoRouter goRouter() {
  return _router;
}
