import 'package:provider/provider.dart';
import 'package:star_wars/core/services/api.dart';
import 'package:star_wars/core/services/people_service.dart';
import 'package:star_wars/core/services/planets_service.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: Api())
];

List<SingleChildCloneableWidget> dependentServices = [
  ProxyProvider<Api, PlanetsService>(
    builder: (context, api, planetsService) => PlanetsService(api: api),
  ),
  ProxyProvider<Api, PeopleService>(
    builder: (context, api, peopleService) => PeopleService(api),
  )
];

List<SingleChildCloneableWidget> uiConsumableProviders = [
  // StreamProvider<User>(
  //   builder: (context) =>
  //       Provider.of<AuthenticationService>(context, listen: false).user,
  // )
];
