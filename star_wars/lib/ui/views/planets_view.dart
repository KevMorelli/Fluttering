import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/core/viewmodels/planets_viewmodel.dart';
import 'package:star_wars/ui/views/base_widget.dart';
import 'package:star_wars/ui/widgets/drawer.dart';
import 'package:star_wars/ui/widgets/loading_indicator.dart';

class PlanetsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<PlanetsViewModel>(
      model: PlanetsViewModel(planetsService: Provider.of(context)),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text("Planets"),
        ),
        drawer: AppDrawer(),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Center(
                child: RefreshIndicator(
                  child: ListView.separated(
                    itemCount: viewModel.planets.length,
                    itemBuilder: (BuildContext context, int position) {
                      return Card(
                        elevation: 0,
                        color: Colors.transparent,
                        child: ListTile(
                          title: Text(
                            viewModel.planets[position].name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          onTap: () =>
                              viewModel.navigateToPlanetInfo(position, context),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Container(
                      color: Color(0xff2c2c2c),
                      height: 3.0,
                    ),
                  ),
                  onRefresh: () => viewModel.fetchData(),
                ),
              ),
              Visibility(
                child: LoadingIndicator(),
                visible: viewModel.busy,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
