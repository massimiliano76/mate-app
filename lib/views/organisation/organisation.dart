import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import '../../services/services.dart';
import '../../shared/shared.dart';
import 'local_widgets/local_widgets.dart';

class Organisation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserModel user = Provider.of<UserModel>(context);
    if (user != null) {
      return SliverList(
        delegate: SliverChildListDelegate(
          [
            StreamBuilder(
              stream: Document<University>(
                path: 'hochschulen/${user.university}',
              ).streamData(),
              builder:
                  (BuildContext context, AsyncSnapshot<University> snapshot) {
                if (snapshot.hasData) {
                  return OrganisationPanel(
                      user: user, university: snapshot.data);
                }
                return const LoadingIndicator();
              },
            ),
            OrganisationList(),
          ],
        ),
      );
    }
    return const SliverLoadingIndicator();
  }
}
