abstract class AppConfiguration {
  const AppConfiguration();

  final String baseUrl = 'Can not use abstract class';
}

class StagingAppConfiguration implements AppConfiguration {
  const StagingAppConfiguration();

  @override
  final String baseUrl = 'http://www.staging.com/api';
}

class ProductionAppConfiguration implements AppConfiguration {
  const ProductionAppConfiguration();

  @override
  final String baseUrl = 'http://www.production.com/api';
}

// class LoginClient(final context){
//   const LoginClient();

//   Future<Response> authenticate({required String username, required String password,}) async {

//     String path = bloc.of<context>.configuration.baseUrl + '/authentication';

// // await client.
//   // }

  

// }
