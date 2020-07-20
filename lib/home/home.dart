import 'package:deshvidesh/detail/detail.dart';
import 'package:search_app_bar/filter.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:flutter/material.dart';
import 'country.dart';
import 'home_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePage(
        title: 'Search',
        bloc: HomeBloc(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final HomeBloc bloc;

  MyHomePage({
    this.title,
    this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar<Country>(
        backgroundColor: Colors.red[400],
        title: Text(title),
        searcher: bloc,
        filter: (Country country, String query) =>
            Filters.startsWith(country.name, query),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: StreamBuilder<List<Country>>(
        stream: bloc.filteredData,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          final list = snapshot.data;
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(list[index].name),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CountryDetails()));
                },
              );
            },
            itemCount: list.length,
          );
        },
      ),
    );
  }
}
