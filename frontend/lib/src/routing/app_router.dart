import 'package:flutter/material.dart';
import 'package:frontend/src/features/list/presentation/pages/shopping_list_create.dart';
import 'package:frontend/src/features/list/presentation/pages/shopping_list_details_page.dart';
import 'package:frontend/src/features/list/presentation/pages/shopping_lists_page.dart';
import 'package:frontend/src/routing/navigation_scaffold.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  homeScreen,
  shoppingLists,
  shoppingListDetails,
  shoppingListCreate,
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
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) =>
              NavigationScaffold(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(navigatorKey: _shellListsNavigatorKey, routes: [
              GoRoute(
                  name: AppRoutes.shoppingLists.name,
                  path: '/lists',
                  builder: (context, state) => const ShoppingListsPage(),
                  routes: [
                    GoRoute(
                        path: 'create',
                        name: AppRoutes.shoppingListCreate.name,
                        parentNavigatorKey: _shellListsNavigatorKey,
                        builder: (context, state) =>
                            const ShoppingListCreatePage()),
                    GoRoute(
                        path: ':id',
                        name: AppRoutes.shoppingListDetails.name,
                        builder: (context, state) => ShoppingListDetailsPage(
                            listId: int.parse(state.pathParameters['id']!)))
                  ])
            ]),
            StatefulShellBranch(
                navigatorKey: _shellRecipesNavigatorKey,
                routes: [
                  GoRoute(
                    name: AppRoutes.recipes.name,
                    path: '/recipes',
                    builder: (context, state) =>
                        const Center(child: Text("Not implemented yet!")),
                  )
                ]),
            StatefulShellBranch(
                navigatorKey: _shellGroupsNavigatorKey,
                routes: [
                  GoRoute(
                    name: AppRoutes.groups.name,
                    path: '/groups',
                    builder: (context, state) =>
                        const Center(child: Text("Not implemented yet!")),
                  )
                ])
          ])
    ]);

GoRouter goRouter() {
  return _router;
}
