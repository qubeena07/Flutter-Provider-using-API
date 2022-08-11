import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/model/post_model.dart';
import 'package:provider_api/state/app_state.dart';
import 'package:provider_api/utils/data_util.dart';

class ApiPage extends StatelessWidget {
  const ApiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<AppState>(builder: (context, value, child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            List<PostModel> data = await DataUtil().getData();
            value.updatePostModel(data);
          },
          child: const Icon(Icons.refresh),
        ),
        appBar: const CupertinoNavigationBar(
          middle: Text("Provider with API"),
        ),
        body: SizedBox(
            height: size.height -
                const CupertinoNavigationBar().preferredSize.height,
            width: size.width,
            child: value.dataList.isEmpty
                ? const Center(
                    child: Text("No data please refresh"),
                  )
                : ListView.builder(
                    itemCount: value.dataList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(value.dataList[index].title.toString()),
                        leading: Text(value.dataList[index].id.toString()),
                        subtitle: Text(value.dataList[index].body.toString()),
                      );
                    })),
      );
    });
  }
}
