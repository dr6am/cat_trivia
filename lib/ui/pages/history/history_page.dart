import 'package:flutter/material.dart';

import '../../../const/colors.dart';
import '../../../models/cat_fact.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.darkBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black87,
            ),
            onPressed: () => Navigator.pop(context)),
        centerTitle: true,
        title: Text(
          'History',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: RefreshIndicator(
          onRefresh: () async {
            await Future<void>.delayed(const Duration(milliseconds: 300));
            return;
          },
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) => _buildTile(
                // key: ObjectKey<int>(index),
                context: context,
                catFact: CatFact(
                    id: (++index).toString(),
                    text: 'Cat fact #$index',
                    createdAt: DateTime.now())),
          ),
        ),
      ),
    );
  }

  Widget _buildTile({required BuildContext context, required CatFact catFact}) {
    return Container(
      key: ValueKey<String>(catFact.id),
      margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Cat fact №${catFact.id}',
            textAlign: TextAlign.left,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(fontWeightDelta: 2),
          ),
          Text(
            catFact.text * 24,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 4),
          Text(
            catFact.created,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
