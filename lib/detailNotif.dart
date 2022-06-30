import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uaspemob1/tambahBerita.dart';

class datailNotif extends StatefulWidget {
  datailNotif({Key? key}) : super(key: key);

  @override
  State<datailNotif> createState() => _datailNotifState();
}

class _datailNotifState extends State<datailNotif> {
  final CollectionReference pengiriman =
      FirebaseFirestore.instance.collection("berita");

  List dataPengiriman = [];

  @override
  showAlertDialog(BuildContext context) {
    // Create button

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Update Berita"),
      content: Text("Berhasil Hapus Berita!"),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: FutureBuilder(
        future: FireStoreDataBase().getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text(
              "Something went wrong",
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            dataPengiriman = snapshot.data as List;
            return buildItems(dataPengiriman);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildItems(dataList) => ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: dataList.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 10.0,
                child: ListTile(
                  tileColor: Color(0xFF7FD3FA),
                  leading: IconButton(
                    onPressed: () async {
                      try {
                        showAlertDialog(context);
                        await FirebaseFirestore.instance
                            .collection("berita")
                            .where("judul",
                                isEqualTo: dataList[index]["judul"].toString())
                            .get()
                            .then((value) {
                          value.docs.forEach((element) {
                            FirebaseFirestore.instance
                                .collection("berita")
                                .doc(element.id)
                                .delete()
                                .then((value) {
                              print("Success!");
                            });
                          });
                        });
                      } catch (e) {}
                      setState(() {});
                    },
                    icon: Icon(Icons.delete),
                  ),
                  title: Text(dataList[index]["judul"]),
                  subtitle: Text(dataList[index]["foto"]),
                ),
              )
            ],
          );
        },
      );
}
