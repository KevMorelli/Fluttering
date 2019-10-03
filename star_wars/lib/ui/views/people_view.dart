import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/core/viewmodels/people_viewmodel.dart';
import 'package:star_wars/ui/widgets/drawer.dart';
import 'package:star_wars/ui/widgets/loading_indicator.dart';

import 'base_widget.dart';

class PeopleView extends StatefulWidget {
  @override
  _PeopleViewState createState() => _PeopleViewState();
}

class _PeopleViewState extends State<PeopleView> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<PeopleViewModel>(
        model: PeopleViewModel(peopleService: Provider.of(context)),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("People"),
              ),
              drawer: AppDrawer(),
              body: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background.png'),
                          fit: BoxFit.cover)),
                  child: Stack(children: <Widget>[
                    Center(
                      child: RefreshIndicator(
                        child: ListView.separated(
                          itemCount: model.getTotal(),
                          itemBuilder: (BuildContext context, int position) {
                            return Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  model.getPerson(position).name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                // onTap: () => planetsProvider.navigateToPlanetInfo(
                                //     position, context),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              Container(
                            color: Color(0xff2c2c2c),
                            height: 3.0,
                          ),
                        ),
                        onRefresh: () => model.fetchData(),
                      ),
                    ),
                    Visibility(
                      child: LoadingIndicator(),
                      visible: model.busy,
                    ),
                  ])),
            ));
  }
}
