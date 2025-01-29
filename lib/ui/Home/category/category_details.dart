import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/model/sourceResponse.dart';
import 'package:news/utils/app_colors.dart';

class categoryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse?>(
      future: ApiManager.getSources(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.grayColor,
            ),
          );
        } else if (snapshot.hasError) {
          return Column(
            children: [
              Text(
                'Something went wrong.',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Try again',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ))
            ],
          );
        }
        if (snapshot.data!.status != 'ok') {
          return Column(
            children: [
              Text(
                snapshot.data!.massage!,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Try again',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ))
            ],
          );
        }
        var sourcesList = snapshot.data!.sources!;
        return ListView.builder(
          itemBuilder: (context, index) {
            return Text(sourcesList[index].name ?? '');
          },
          itemCount: sourcesList.length,
        );
      },
    );
  }
}
