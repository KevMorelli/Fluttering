import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/core/constants/app_assets.dart';
import 'package:star_wars/core/viewmodels/people_viewmodel.dart';
import 'package:star_wars/ui/shared/text_styles.dart';
import 'package:star_wars/ui/widgets/drawer.dart';
import 'package:star_wars/ui/widgets/field_separator.dart';
import 'package:star_wars/ui/widgets/loading_indicator.dart';

import 'base_widget.dart';

class PeopleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<PeopleViewModel>(
        model: PeopleViewModel(peopleService: Provider.of(context)),
        builder: (context, viewModel, child) => Scaffold(
              appBar: AppBar(
                title: Text("People"),
              ),
              drawer: AppDrawer(),
              body: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Assets.BackgroundImage),
                          fit: BoxFit.cover)),
                  child: Stack(children: <Widget>[
                    Center(
                      child: RefreshIndicator(
                        child: ListView.separated(
                          itemCount: viewModel.people.length,
                          itemBuilder: (BuildContext context, int position) {
                            return Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  viewModel.people[position].name,
                                  style: itemListStyle,
                                ),
                                onTap: () => viewModel.navigateToPersonInfo(
                                    position, context),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              FieldSeparator(),
                        ),
                        onRefresh: () => viewModel.fetchData(),
                      ),
                    ),
                    Visibility(
                      child: LoadingIndicator(),
                      visible: viewModel.busy,
                    ),
                  ])),
            ));
  }
}
