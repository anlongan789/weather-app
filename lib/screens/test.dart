import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/repositories/city_repo.dart';

import '../bloc/city_bloc.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Screen"),
      ),
      body: BlocProvider(
        create: (context) =>
            CityBloc(RepositoryProvider.of<CityRepository>(context))
              ..add(LoadCity()),
        child: BlocBuilder<CityBloc, CityState>(
          builder: (context, state) {
            if (state is CityLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CityLoaded) {
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index2) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(state.cities[index].country),
                              Text(state.cities[index].cities[index2]),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    },
                  );
                },
              );
            }
            return const Center(
              child: Text("An error has occurred!"),
            );
          },
        ),
      ),
    );
  }
}
